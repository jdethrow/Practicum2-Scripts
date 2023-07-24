#!/bin/bash
while read first last; 
do
name= "$first $last" #estblishing first and last name
username="$last${first:0:1}" #creates username
n=`egrep –c $username /etc/passwd` #put username into a directory
n=$((n+1)) #establishes fucion for n
username=$username$n #combine n fct with username
useradd -m $username #adds another user
password=`tr -cd '[:alpha:]' < /dev/random | head -c8` #sets password
  # notice difference between the ` and ‘ characters in the line above 
echo $password | passwd --stdin $username #echo's password
echo "$username $password" >> /root/tempPasswords #echo's location of password
done #ends
