#!bin/bash -x
declare -A compute
echo enter value of a
read a
echo enter value of b
read b
echo enter value of c
read c
compute[a]="$((a+b*c))"
compute[b]="$((a*b+c))"
compute[c]="$((c+a/b))"
compute[d]="$((a%b+c))"
echo ${compute[@]}
arr[0]=${compue[a]}
arr[1]=${compute[b]}
arr[2]=${compute[c]}
arr[3]=${compute[d]}

function sortas(){
for ((i=0; i<4; i++))
do
    for((j = 0; j<4-i-1; j++))
    do
     	  if [ ${arr[j]} -gt ${arr[$((j+1))]} ]
        then
            temp=${arr[j]}
            arr[$j]=${arr[$((j+1))]}  
            arr[$((j+1))]=$temp
        fi
    done
done
echo "Array in Ascending order :"
echo ${arr[@]}
}
sortas
function sortde(){
for ((i = 0; i<4; i++))
do
    for((j = 0; j<4-i-1; j++))
    do
        if [ ${arr[j]} -lt ${arr[$((j+1))]} ]
        then
            temp=${arr[j]}
            arr[$j]=${arr[$((j+1))]}  
            arr[$((j+1))]=$temp
        fi
    done
done
echo "Array in Descending order :"
echo ${arr[@]}
}
sortde



