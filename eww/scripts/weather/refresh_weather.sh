DIR="/home/$USER/.config/eww/scripts/weather"

rm ${DIR}/get_weather.sh
echo -n "${DIR}/ansiweather -l " >> "${DIR}/get_weather.sh"
chmod +x ${DIR}/get_weather.sh
curl http://www.geoplugin.net/javascript.gp | awk 'NR==5 { print $5 }' | tr -d "'" | tr -d ";" | tr -d "}" >> ${DIR}/get_weather.sh

${DIR}/get_weather.sh >> /tmp/weather.tmp
mv /tmp/weather.tmp /tmp/weather
