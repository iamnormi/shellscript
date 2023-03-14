# Command used for music script:
```
awk '{print "yt-dlp --extract-audio --audio-format opus --output '"'%(playlist)s/%(playlist_index)s- %(title)s.%(ext)s'"' --external-downloader aria2c " $s}' link.str > dl.str
```
