week 9a
AIM:a) Write a shell script to find factorial of a given integer.
ALGORITHM:
Step 1:Start
Step 2:Read any number to find factorial
Step 3: initialize fact=1 and i=1
Step 4:while i less than do
fact=fact*i
i=i+1
Step 4:print fact
Step 5: stop
Source code :
echo enter a number
read a
i=2
fact=1
if [ $a -ge 2 ]
then
while [ $i -le $a ]
do
fact=`expr $fact \* $i`
i=`expr $i + 1`
done
fi
echo factorial of $a=$fact
CMR Institute of Technology
Operating Systems(Linux) Lab Page 27
output:
[latha@localhost ~]$ sh fact.sh
enter a number
5
factorial of 5=120