# pdf_to_video
Convert a pdf to a video. This is particularly interesting in order to display slides in a set of sequence video during an event.

The script rely on imagemagick and ffmpeg tools. You can set the number of seconds of display of each slide.
```
./pdf_to_video.sh 
Usage: ./pdf_to_video.sh <NB_SEC_PER_SLIDE> <INPUT_PDF> <OUTPUT_VIDEO>

./pdf_to_video.sh 10 pres.pdf pres.mp4
```
