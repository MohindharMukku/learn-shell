#example

a=10
name=devops

#print variables
echo a = $a
echo name = ${name}

#Date=12-05-2023
echo todays date is $(date)

#proper code

# for the variable taging the cmd should be taged in the proper way with  $(cmd)

#cmd example

Date1=$(date +%F)

Day1=$(date +%e)

echo todays date is ${Date1}

echo day of the month $Day1

#arithmetic example

math1=$((10-4/2))

math2=$(((10-4)/2))

echo test0 ${math1}

echo test1 ${math2}