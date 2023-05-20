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

percent=$(curl -s  https://www.themoviedb.org/tv/$input | grep -w user_score_chart | grep data-percent | xargs -n1 | grep 86 |awk -F = '{print $2}' | awk -F . '{print $1}')


if [ -z "$input" ]; then

else [ $percent -ge  89 ]; then
  echo The tv show Average

fi



if [ -z "$input" ]; then
  echo Tvshow name is missing
else
  echo Tv shox name $1
#  exit
fi