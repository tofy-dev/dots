#!/bin/sh
DIR="/home/$USER/.config/eww/scripts/weather"

rm ${DIR}/get_weather.sh
echo -n "${DIR}/ansiweather -l " >> "${DIR}/get_weather.sh"
chmod +x ${DIR}/get_weather.sh
curl ipinfo.io | grep "city" | awk '{ print $2}' | tr -d '"' | tr -d ',' >> ${DIR}/get_weather.sh

${DIR}/get_weather.sh >> /tmp/weather.tmp
mv /tmp/weather.tmp /tmp/weather
