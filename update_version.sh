commit_name=$(git rev-parse HEAD)

for file in *.sthlp;
	do cat "$file" | awk -F'commit: ' '{print $2}$';
done
