#!/bin/bash
# declara o valor da variável O sendo + (SOMA)
O=+
# declara o valor da variável A igual a 1
A=1
Z=${1:-1}
[ "$2" ] && {
	A=$1
       	Z=$2
}

[ $A -gt $Z ] && O=-

while [ $Z -ne $A ]; do 
	echo $A
       	eval "A=\$((A$O 1))" 
done 
	echo "$A"
