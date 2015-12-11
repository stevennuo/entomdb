server=Mongo-T1
db=onions
lab=ds027385.mongolab.com:27385/onions
lusr=onions
lpw=onions
colls=( avatars chapters hypervideos problemsets provinces topics videos )

for c in ${colls[@]}
do
  mongodump -h $server -d $db -c $c
done
mongorestore --drop $lab -u $lusr -p $lpw
rm -rf dump
