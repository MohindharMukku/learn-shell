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

percent=$(curl -s  https://www.themoviedb.org/tv/$input | grep -w user_score_chart | xargs -n1 | grep data-percent | awk -F = '{print $2}' | awk -F . '{print $1}')

premiered=$(curl -s https://www.themoviedb.org/tv/$input | grep -w premiered | xargs -l| sed 's/<\/\?p>//g' | awk '{print $6,$7,$8,$9}')


if [ "$percent" -le  39  ]; then
  echo The Tv show $input is Disaster
  echo The Show premiered on $premiered

elif [ "$percent" -le 59  ]; then
  echo The Tv show $input is Flop
  echo The Show premiered on $premiered

elif [ "$percent" -le 79 ]; then
  echo The TV show $Input is Average
  echo The Show premiered on $premiered

elif [ "$percent" -le 89 ]; then
  echo The Tv show $input is Above Average
  echo The Show premiered on $premiered

elif [ "$percent" -le 94 ]; then
  echo The Tv show $input is  Hit
  echo The Show premiered on $premiered

elif [ "$percent" -le 100  ]; then
  echo The Tv show $input is Blockbuster
  echo The Show premiered on $premiered

else
  echo The Tv show is  rating is not availabe
fi



#if [ -z "$input" ]; then
#  echo Tvshow name is missing
#else
#  echo Tv shox name $percent
#  exit
#fi