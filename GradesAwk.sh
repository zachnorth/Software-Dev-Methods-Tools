#Adam Casey and Zach North

#!/bin/sh
awk '{sum=0; n=0; average=0; for(i=4;i<=NF;i++) {sum+=$i; ++n} {average=int(sum/n)} 
print average, "[" $1 "] " $3 "," $2}' $1 | sort -k3 -k1
