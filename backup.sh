db=onions
colls=( avatars chapters hypervideos problemsets provinces topics videos )

for c in ${colls[@]}
do
  mongodump -d $db -c $c
done

tar cvfj dump.tar.bz2 dump
rm -rf dump
