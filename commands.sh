ffmpeg -i input_video.mp4 -ss 00:00:35 -t 00:00:10 -c:v copy -c:a copy cropped.mp4
convert -background none -resize 50% -depth 8 plate.svg plate.png
ffmpeg -i cropped.mp4 -i plate.png -filter_complex "[0:v][1:v] overlay=0:546:enable='between(t,1,10)'" plated.mp4
ffmpeg -i plated.mp4 -vf "drawtext=fontfile=arial.ttf:text='I am learning computer graphics!':fontcolor=black:fontsize=24:x=200:y=476:enable='between(t,2,10)" result.mp4
