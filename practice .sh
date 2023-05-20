
input=$1

tittle=$1
clean_tittle="${tittle#*-}"

percent=$(curl -s  https://www.themoviedb.org/tv/$input | grep -w user_score_chart | xargs -n1 | grep data-percent | awk -F = '{print $2}' | awk -F . '{print $1}')

premiered=$(curl -s https://www.themoviedb.org/tv/$input | grep -w premiered | xargs -l| sed 's/<\/\?p>//g' | awk '{print $6,$7,$8,$9}')


if [ "$percent" -le  39  ]; then
  echo The Tv show $clean_tittle is Disaster
  echo The Show premiered on $premiered

elif [ "$percent" -le 59  ]; then
  echo The Tv show $clean_tittle is Flop
  echo The Show premiered on $premiered

elif [ "$percent" -le 79 ]; then
  echo The TV show $clean_tittle is Average
  echo The Show premiered on $premiered

elif [ "$percent" -le 89 ]; then
  echo The Tv show $clean_tittle is Above Average
  echo The Show premiered on $premiered

elif [ "$percent" -le 94 ]; then
  echo The Tv show $clean_tittle is  Hit
  echo The Show premiered on $premiered

elif [ "$percent" -le 100  ]; then
  echo The Tv show $clean_tittle is Blockbuster
  echo The Show premiered on $premiered

else
  echo The Tv show is  rating is not availabe
fi