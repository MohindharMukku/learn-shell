#input - the file name
# if input is null exit with echo "the moving name is missing"
#percent=code (curl -s  https://www.themoviedb.org/tv/119051-wednesday | grep -w user_score_chart | grep data-percent | xargs -n1 | grep 86 |awk -F = '{print $2}' | awk -F . '{print $1}')
#print result is
#   Blockbuster - 95-100
#   hit         - 90-95
#Above Average  - 80-90
#Average        - 60-80
#Flop           - 40-60
#Disaster       - 00-40

input=$1
if [ -z "$input" ]; then
  echo Tvshow name is missing
  exit
fi

percent=$(curl -s  https://www.themoviedb.org/tv/$input | grep -w user_score_chart | grep data-percent | xargs -n1 | grep 86 |awk -F = '{print $2}' | awk -F . '{print $1}')

if [ -z "$input" ]; then
  echo tv show name is missing
else tv show rating is $percent
fi



