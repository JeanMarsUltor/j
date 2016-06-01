<?php
	
	/********************************************
	Module contains calls to PayPal APIs 
	********************************************/

	if (session_id() == "") 
		session_start();

	require('paypal_config.php');

	// Use values from config.php
	$PROXY_HOST = PROXY_HOST;
	$PROXY_PORT = PROXY_PORT;
	$SandboxFlag = SANDBOX_FLAG;

	
	if($SandboxFlag)  //API Credentials and URLs for Sandbox
	{
		$API_UserName=PP_USER_SANDBOX;
		$API_Password=PP_PASSWORD_SANDBOX;
		$API_Signature=PP_SIGNATURE_SANDBOX;
		$API_Endpoint = PP_NVP_ENDPOINT_SANDBOX;
		$PAYPAL_URL = PP_CHECKOUT_URL_SANDBOX;
	}
	else  // API Credentials and URLs for Live
	{
		$API_UserName=PP_USER;
		$API_Password=PP_PASSWORD;
		$API_Signature=PP_SIGNATURE;
		$API_Endpoint = PP_NVP_ENDPOINT_LIVE;
		$PAYPAL_URL = PP_CHECKOUT_URL_LIVE;
	}

	// BN Code 	is only applicable for partners
	$sBNCode = SBN_CODE;
	
	$version=API_VERSION;


	/*   
	* Purpose: 	Prepares the parameters for the SetExpressCheckout API Call.
	* Inputs:  
	*		parameterArray:     the item details, prices and taxes
	*		returnURL:			the page where buyers return to after they are done with the payment review on PayPal
	*		cancelURL:			the page where buyers return to when they cancel the payment review on PayPal
	*/
	function CallShortcutExpressCheckout( $paramsArray, $returnURL, $cancelURL, $credentials) 
	{
		//------------------------------------------------------------------------------------------------------------------------------------
		// Construct the parameter string that describes the SetExpressCheckout API call in the shortcut implementation
		// For more information on the customizing the parameters passed refer: https://developer.paypal.com/docs/classic/express-checkout/integration-guide/ECCustomizing/
		
		//Mandatory parameters for SetExpressCheckout API call
		if(isset($paramsArray["PAYMENTREQUEST_0_AMT"]))
		{
			$nvpstr = "&PAYMENTREQUEST_0_AMT=". $paramsArray["PAYMENTREQUEST_0_AMT"];
			$_SESSION["Payment_Amount"]= $paramsArray["PAYMENTREQUEST_0_AMT"];
		}

		if(isset($paramsArray["paymentType"]))
		{
			$nvpstr = $nvpstr . "&PAYMENTREQUEST_0_PAYMENTACTION=" .  $paramsArray["paymentType"];
			$_SESSION["PaymentType"] = $paramsArray["paymentType"];
		}

		if(isset($returnURL))
		$nvpstr = $nvpstr . "&RETURNURL=" . $returnURL;

		if(isset($cancelURL))
		$nvpstr = $nvpstr . "&CANCELURL=" . $cancelURL;

		//Optional parameters for SetExpressCheckout API call
		if(isset($paramsArray["currencyCodeType"]))  
		{
			$nvpstr = $nvpstr . "&PAYMENTREQUEST_0_CURRENCYCODE=" . $paramsArray["currencyCodeType"];
			$_SESSION["currencyCodeType"] = $paramsArray["currencyCodeType"];	
		} 

		if(isset($paramsArray["PAYMENTREQUEST_0_ITEMAMT"]))
		{
			$nvpstr = $nvpstr . "&PAYMENTREQUEST_0_ITEMAMT=" . $paramsArray["PAYMENTREQUEST_0_ITEMAMT"];
			$_SESSION['itemAmt']= $paramsArray["PAYMENTREQUEST_0_ITEMAMT"];
		}

		if(isset($paramsArray["PAYMENTREQUEST_0_TAXAMT"]))
		{
			$nvpstr = $nvpstr . "&PAYMENTREQUEST_0_TAXAMT=" . $paramsArray["PAYMENTREQUEST_0_TAXAMT"];
			$_SESSION['taxAmt']= $paramsArray["PAYMENTREQUEST_0_TAXAMT"];
		}

		if(isset($paramsArray["PAYMENTREQUEST_0_SHIPPINGAMT"]))
		{
			$nvpstr = $nvpstr . "&PAYMENTREQUEST_0_SHIPPINGAMT=" . $paramsArray["PAYMENTREQUEST_0_SHIPPINGAMT"];
			$_SESSION['shippingAmt'] = $paramsArray["PAYMENTREQUEST_0_SHIPPINGAMT"];
		}

		if(isset($paramsArray["PAYMENTREQUEST_0_HANDLINGAMT"]))
		{
			$nvpstr = $nvpstr . "&PAYMENTREQUEST_0_HANDLINGAMT=" . $paramsArray["PAYMENTREQUEST_0_HANDLINGAMT"];
			$_SESSION['handlingAmt'] = $paramsArray["PAYMENTREQUEST_0_HANDLINGAMT"];
		}

		if(isset($paramsArray["PAYMENTREQUEST_0_SHIPDISCAMT"]))
		{
			$nvpstr = $nvpstr . "&PAYMENTREQUEST_0_SHIPDISCAMT=" . $paramsArray["PAYMENTREQUEST_0_SHIPDISCAMT"];
			$_SESSION['shippingDiscAmt'] = $paramsArray["PAYMENTREQUEST_0_SHIPDISCAMT"];
		}

		if(isset($paramsArray["PAYMENTREQUEST_0_INSURANCEAMT"]))
		{
			$nvpstr = $nvpstr . "&PAYMENTREQUEST_0_INSURANCEAMT=" . $paramsArray["PAYMENTREQUEST_0_INSURANCEAMT"];
			$_SESSION['insuranceAmt'] = $paramsArray["PAYMENTREQUEST_0_INSURANCEAMT"];
		}
		$k=0;
		while(isset($paramsArray["L_PAYMENTREQUEST_0_NAME".$k])){
			$nvpstr = $nvpstr . "&L_PAYMENTREQUEST_0_NAME".$k."=" . $paramsArray["L_PAYMENTREQUEST_0_NAME".$k];

			if(isset($paramsArray["L_PAYMENTREQUEST_0_NUMBER".$k]))
			$nvpstr = $nvpstr . "&L_PAYMENTREQUEST_0_NUMBER".$k."=" . $paramsArray["L_PAYMENTREQUEST_0_NUMBER".$k];

			if(isset($paramsArray["L_PAYMENTREQUEST_0_DESC".$k]))
			$nvpstr = $nvpstr . "&L_PAYMENTREQUEST_0_DESC".$k."=" . $paramsArray["L_PAYMENTREQUEST_0_DESC".$k];

			if(isset($paramsArray["L_PAYMENTREQUEST_0_AMT".$k]))
			$nvpstr = $nvpstr . "&L_PAYMENTREQUEST_0_AMT".$k."=" . $paramsArray["L_PAYMENTREQUEST_0_AMT".$k];

			if(isset($paramsArray["L_PAYMENTREQUEST_0_QTY".$k]))
			$nvpstr = $nvpstr . "&L_PAYMENTREQUEST_0_QTY".$k."=" . $paramsArray["L_PAYMENTREQUEST_0_QTY".$k];
			$k++;
		}
	
	
		if(isset($paramsArray["LOGOIMG"]))
		$nvpstr = $nvpstr . "&LOGOIMG=". $paramsArray["LOGOIMG"];
		
		/*Bill Me Later Specific Parameters*/
		$nvpstr .= "&LANDINGPAGE=Billing";
		$nvpstr .= "&USERSELECTEDFUNDINGSOURCE=BML";

		/*
		* Make the API call to PayPal
		* If the API call succeded, then redirect the buyer to PayPal to begin to authorize payment.  
		* If an error occured, show the resulting errors
		*/
	    $resArray=hash_call("SetExpressCheckout", $nvpstr, $credentials);
		$ack = strtoupper($resArray["ACK"]);
		if($ack=="SUCCESS" || $ack=="SUCCESSWITHWARNING")
		{
			$token = urldecode($resArray["TOKEN"]);
			$_SESSION['TOKEN']=$token;
		}
	    return $resArray;
	}

	

	/*
	  * hash_call: Function to perform the API call to PayPal using API signature
	  * @methodName is name of API  method.
	  * @nvpStr is nvp string.
	  * returns an associtive array containing the response from the server.
	*/
	function hash_call($methodName,$nvpStr, $credentials)
	{
		//declaring of global variables
		 $API_Endpoint = "https://api-3t.sandbox.paypal.com/nvp";
		 $version="109.0" ;//, $API_UserName, $API_Password, $API_Signature;
		 $sBNCode="PP-DemoPortal-PPCredit-php";

		//setting the curl parameters.
		$ch = curl_init();
		curl_setopt($ch, CURLOPT_URL,$API_Endpoint);
		curl_setopt($ch, CURLOPT_VERBOSE, 1);

		//turning off the server and peer verification(TrustManager Concept).
		curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);
		curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, FALSE);
        curl_setopt($ch, CURLOPT_SSLVERSION ,CURL_SSLVERSION_TLSv1);

		curl_setopt($ch, CURLOPT_RETURNTRANSFER,1);
		curl_setopt($ch, CURLOPT_POST, 1);
		


		//NVPRequest for submitting to server
		$nvpreq="METHOD=" . urlencode($methodName) . "&VERSION=" . urlencode($version) . "&PWD=" . urlencode($credentials['API_Password']) . "&USER=" . urlencode($credentials['API_UserName']) . "&SIGNATURE=" . urlencode($credentials['API_Signature']) . $nvpStr . "&BUTTONSOURCE=" . urlencode($sBNCode);
		

		//setting the nvpreq as POST FIELD to curl
		curl_setopt($ch, CURLOPT_POSTFIELDS, $nvpreq);

		//getting response from server
		$response = curl_exec($ch);

		//convrting NVPResponse to an Associative Array
		$nvpResArray=deformatNVP($response);
		$nvpReqArray=deformatNVP($nvpreq);
		$_SESSION['nvpReqArray']=$nvpReqArray;

		if (curl_errno($ch)) 
		{
			// moving to display page to display curl errors
			  $_SESSION['curl_error_no']=curl_errno($ch) ;
			  $_SESSION['curl_error_msg']=curl_error($ch);

			  //Execute the Error handling module to display errors. 
		} 
		else 
		{
			 //closing the curl
		  	curl_close($ch);
		}

		return $nvpResArray;
	}

	/*
	* Purpose: Redirects to PayPal.com site.
	* Inputs:  NVP string.
	*  Returns: 
	*/
	function RedirectToPayPal ( $token )
	{
		global $PAYPAL_URL;
		
		// Redirect to paypal.com here
		// With useraction=commit user will see "Pay Now" on Paypal website and when user clicks "Pay Now" and returns to our website we can call DoExpressCheckoutPayment API without asking the user
		$payPalURL = $PAYPAL_URL . $token;	

		header("Location:".$payPalURL);
		exit;
	}

	
	/* 
	  * This function will take NVPString and convert it to an Associative Array and it will decode the response.
	  * It is usefull to search for a particular key and displaying arrays.
	  * @nvpstr is NVPString.
	  * @nvpArray is Associative Array.
	  */
	function deformatNVP($nvpstr)
	{
		$intial=0;
	 	$nvpArray = array();

		while(strlen($nvpstr))
		{
			//postion of Key
			$keypos= strpos($nvpstr,'=');
			//position of value
			$valuepos = strpos($nvpstr,'&') ? strpos($nvpstr,'&'): strlen($nvpstr);

			/*getting the Key and Value values and storing in a Associative Array*/
			$keyval=substr($nvpstr,$intial,$keypos);
			$valval=substr($nvpstr,$keypos+1,$valuepos-$keypos-1);
			//decoding the respose
			$nvpArray[urldecode($keyval)] =urldecode( $valval);
			$nvpstr=substr($nvpstr,$valuepos+1,strlen($nvpstr));
	     }
		return $nvpArray;
	}

?>
