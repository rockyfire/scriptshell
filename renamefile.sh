filelist=$(find $1 -maxdepth 1  -name "*.jpg")
echo $filelist
# rename 's/.*img$//'
i=0
for var in $filelist
do
	echo ${var}
	i=$(($i+1))
	$(mv  $var  $1/rocky$i.jpg)
done

