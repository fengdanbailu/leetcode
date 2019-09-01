touch file.txt
echo 'name age' > file.txt
echo 'alice 21' >> file.txt
echo 'ryan 30' >> file.txt

ncol=`head -n 1 file.txt | wc -w`
for i in `seq 1 $ncol`
do
    echo `cut -d' ' -f$i file.txt`
done

rm -fr file.txt