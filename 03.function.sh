#input - the file name
# if input is null exit with echo "the moving name is missing"
#percent=code (curl -s  https://www.themoviedb.org/tv/119051-wednesday | grep -w user_score_chart | grep data-percent | xargs -n1 | grep 86 |awk -F = '{print $2}' | awk -F . '{print $1}')
#print result is
#   Blockbuster - 95-100
#   hit         - 90-94
#Above Average  - 80-89
#Average        - 60-79
#Flop           - 40-59
#Disaster       - 00-39

input=$1
if [ -z "$input" ]; then
  echo Tvshow name is missing
else
  echo Tv shox name $1
  exit
fi

#percent=$(curl -s  https://www.themoviedb.org/tv/$input | grep -w user_score_chart | grep data-percent | xargs -n1 | grep 86 |awk -F = '{print $2}' | awk -F . '{print $1}')


#if [ -z "$input" ]; then
#  echo tv show name is missing

#else [ $percent -ge 00 -a $percent -le 39 ]; then
#  echo The tv show is Disaster

#else [ $percent -ge 40 -a $percent -le 59 ]; then
#  echo The tv show is flop

#else [ $percent -ge 60 -a $percent -le 79 ]; then
#  echo The tv show is average

#else [ $percent -ge 80 -a $percent -le 89 ]; then
#  echo The tv show is Above Average

#else [ $percent -ge 90 -a $percent -le 94 ]; then
#  echo The tv show is hit

#else [ $percent -ge 95 -a $percent -le 100 ]; then
#  echo The tv show is Blockbuster

#fi



