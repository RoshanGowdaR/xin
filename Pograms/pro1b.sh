str=$1
b=`echo -n $str|wc -m`
#l=`expr $b - 1`
echo Lenght of String is $b
a=" "
for (( i=b ; i>0 ; i-- ))
do
	c=`echo $str|cut -c $i`
	a=$a$c
done
echo $a
