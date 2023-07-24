#!/bin/bash
input =“./names.txt”   
while IFS=, read -r first last;      # notice the comma after the equal sign 
  do
name="$first $last" # makes a first and last
username="${first:0:1}$last” #creates a username using first name and last name
 n=`egrep –c $username /etc/passwd` #goes into /etc/passwd directory using grep
 n=$((n+1)) #adds 1 to n
 username=$username$n #creates another username from the username
useradd -m $username -s /bin/bash #starts a shell script for the username
done < "$input" #finish the script
 tail /etc/passwd #output the last part of the /etc/passwd directory
