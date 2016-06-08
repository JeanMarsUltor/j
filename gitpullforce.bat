cd C:\xampp\htdocs\joyeria
git fetch --all
git reset --hard origin/master
git pull
mysqldump -u root silverzum > silverzum_bkup.sql
mysql silverzum -u root < presql.sql
mysql silverzum -u root < silverzum.sql
pause