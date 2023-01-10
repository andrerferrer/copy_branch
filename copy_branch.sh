a_path=$1
full_path=$(pwd)/$a_path

git checkout $2
cp $full_path "$full_path"_copy
git checkout -
mv "$full_path"_copy $full_path 

git add .
git commit -m "update $a_path"