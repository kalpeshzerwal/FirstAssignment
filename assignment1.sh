# first Assignment............

#! /bin/bash
echo "Enter name of dir":
read Directoryname
mkdir -p $Directoryname
cd $Directoryname
for i in {1..4};
do
	echo >"hello $(printf "%d" "$i")" $Directoryname$i.txt
done
cd ..
zip -r $Directoryname.zip $Directoryname



# second assignment...........

len=${#Directoryname}
echo $len
for((j=$len-1;j>=0;j--))
do
reverseFolder="$reverseFolder${Directoryname:$j:1}"
done
mkdir $reverseFolder
unzip $Directoryname.zip -d $reverseFolder


# third assignment............

cp $Directoryname/*  $reverseFolder
cd $reverseFolder
rm -rf $Directoryname
cat *.txt
