touch file.txt
echo 'Line 1' > file.txt
echo 'Line 2' >> file.txt
echo 'Line 3' >> file.txt
echo 'Line 4' >> file.txt
echo 'Line 5' >> file.txt
echo 'Line 6' >> file.txt
echo 'Line 7' >> file.txt
echo 'Line 8' >> file.txt
echo 'Line 9' >> file.txt
echo 'Line 10' >> file.txt
echo 'Line 11' >> file.txt
echo 'Line 12' >> file.txt
echo 'solution one:'
tail -n +10 file.txt | head -1 
echo 'solution two:'
head -10 file.txt | tail -n +10
echo 'solution three:'
tail -n +6 file.txt | head -n +5 | tail  -n +5
rm -fr file.txt