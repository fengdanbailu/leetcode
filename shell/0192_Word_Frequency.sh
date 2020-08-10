touch words.txt
echo 'the day is sunny the the' > words.txt
echo 'the sunny is is' >> words.txt

cat words.txt | tr -s ' ' '\n' | sort | uniq -c | sort -r | awk '{ print $2,$1 }'
# cat 打印所有
# tr 替换
# sort 排序
# uniq 统计
# sort -r 排序
# awk 打印
rm -fr words.txt