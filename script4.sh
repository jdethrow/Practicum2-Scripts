#!/bin/bash
input =“./names.txt”   
while IFS=, read -r first last; # notice the comma after the equal sign
 do
name="$Jomus $Dethrowmus"
username="${Jomus:0:1}$Dethrowmus"
useradd -m $username -s /bin/bash
 done < "$input"
tail -8 /etc/passwd
