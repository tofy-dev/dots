IMG="/home/$USER/.config/eww/images/"
DIR="/home/$USER/.config/eww/scripts/get_image"
image_link=`playerctl metadata | grep "artUrl" | awk '{print $3}'`

# obtain image, store it in ./temp_img
prev_img=`cat ${DIR}/prev_img.txt`
if [ "${image_link}" != "${prev_img}" ]
then
    if [ "${image_link:0:5}" == "https" ]
    then
        wget -O ${IMG}/album ${image_link}
    else
        length=`echo -n ${image_link} | wc -c`
        image_link=${image_link:7:length}
        cp ${image_link} ${IMG}/album
        magick ${IMG}/album -gravity center -crop 150x150+0+0 +repage ${DIR}/img
    fi
    # update last image
    rm ${DIR}/prev_img.txt
    echo ${image_link} >> ${DIR}/prev_img.txt;

    # modify path in eww
    eww --config ~/.config/eww/windows/menu update image-path="${IMG}"
    eww --config ~/.config/eww/windows/menu update image-path="${IMG}/album"
fi
