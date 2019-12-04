#!bin/bash 
#out=$(echo "[   OK   ]  ........." | awk '{for (i=NF; i > 0; i--){if ($i == "]"){print $(i-1);exit}}}')
index=0
correct=OK
for i in 1 2 3
do
	if [ $index -gt 0 ]
	then
		a=`echo "[ OK  ] aaaaaaaaaaaa" | grep -o "\[.*\]" | sed 's/\]//' | sed 's/\[//'`
		if [ $a = $correct ]; then
                        echo "Service is ok."
                else
                        echo "Service failing."
		fi
	fi
	index=`expr $index + 1`
done
