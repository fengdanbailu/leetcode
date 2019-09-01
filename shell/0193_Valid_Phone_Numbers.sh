touch file.txt
echo '987-123-4567' > file.txt
echo '123 456 7890' >> file.txt
echo '(123) 456-7890' >> file.txt

# for linux
#grep -P '^(\d{3}-|\(\d{3}\) )\d{3}-\d{4}$' file.txt
# for mac
egrep  '^\d{3}-\d{3}-\d{4}|\(\d{3}\) \d{3}-\d{4}$' file.txt


rm -fr file.txt