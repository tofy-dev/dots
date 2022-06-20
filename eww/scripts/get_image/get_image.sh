DIR="/home/$USER/.config/eww/scripts/get_image"
image_link=`playerctl metadata | grep "artUrl" | awk '{print $3}'`

# obtain image, store it in ./temp_img
if [ "${image_link:0:5}" == "https" ]
    then
        prev_img=`cat ${DIR}/prev_img.txt`
        if [ "${image_link}" != "${prev_img}" ]
        then
            wget -O ${DIR}/img ${image_link}
        fi
    else
        length=`echo -n ${image_link} | wc -c`
        image_link=${image_link:7:length}
        cp ${image_link} ${DIR}/img
fi

# update last image
rm ${DIR}/prev_img.txt
echo ${image_link} >> ${DIR}/prev_img.txt;
