
# crate thubnails for all *.ac files in the current directory
# requires bash, fgviewer and imagemagick

# in fgviewer:
#  * rotate & zoom
#  * press c
#  * press esc and wait for the next object

for FILE in `ls *.ac`
do
    
	echo $FILE
    echo ${FILE%.*}_thumbnail.jpg
    fgviewer $FILE
    convert screen_shot_0_0.jpg    -resize 320x240\! ${FILE%.*}_thumbnail.jpg
    rm  screen_shot_0_0.jpg
done

