fileItemString=$(cat  lines.txt |tr "\n" " ")

fileItemArray=($fileItemString)

for item in ${fileItemArray[@]} ; do
	echo "$item (Time: $(date))"
done > ./test.log

git init -b main

git add .

git commit -m "Updating files"

git remote add origin https://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@github.com/Luke-Frazer/cs305_lef92.git

git remove -v

git push origin main
