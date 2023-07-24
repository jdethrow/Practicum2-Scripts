#!/bin/bash
input =“./names.txt”   
while IFS=, read -r first last; # notice the comma after the equal sign
 do
name="$Jomus $Dethrowmus" #Makes name Jomus Dethrowmus
username="${Jomus:0:1}$Dethrowmus" #Creates a username for Jomus Dethrowmus
useradd -m $username -s /bin/bash #Links the user and username
 done < "$input" #ends
tail -8 /etc/passwd #output the last part of /etc/passwd files
