cd C:\xampp\htdocs\joyeria
mysqldump -u root silverzum > silverzum.sql
copy silverzum.sql silverzum_web.sql
fart -- "silverzum_web.sql" "localhost:8888" "www.silverzum.com"
fart -- "silverzum_web.sql" "/joyeria" "/"
fart -- "silverzum_web.sql" "//" "/"
git add --all
git commit -m "new changes"
git push
pause