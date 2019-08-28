touch words.txt
echo 'the day is sunny the the' > words.txt
echo 'the sunny is is' >> words.txt

cat words.txt | tr -s ' ' '\n' | sort | uniq -c | sort -r | awk '{ print $2, $1 }'

rm -fr words.txt
