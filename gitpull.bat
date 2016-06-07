cd C:\xampp\htdocs\joyeria
git pull
mysqldump -u root silverzum > silverzum_bkup.sql
mysql silverzum -u root < presql.sql
mysql silverzum -u root < silverzum.sql
pause