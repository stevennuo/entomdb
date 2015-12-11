server=Mongo-T1
db=onions
lab=ds027385.mongolab.com:27385
lusr=onions
lpw=onions
colls=( avatars chapters hypervideos problemsets provinces topics videos )

for c in ${colls[@]}
do
  mongodump -h $server -d $db -c $c
done
mv dump/onions/* dump/
rm -rf dump/onions
mongorestore --drop -h $lab -d $db -u $lusr -p $lpw
rm -rf dump
