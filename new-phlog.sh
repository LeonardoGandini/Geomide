#!/bin/bash

phdir="/home/neko/Geomide/gopher-hole/phlog/"
gtoday="$(date +'%Y-%m-%d--%H-%M')"
nl=$'\n'

#Ask for post title
read -p  'Post Title: ' gophtitle
#
#Ask for post file name
read -p  'File Title: ' gophfiletitle

#Post title created with figlet
fancytitle=$(figlet -t -k -f /usr/share/figlet/mini.flf $gophtitle)

phlogpost=$phdir/$gtoday--$gophfiletitle.txt

cat <<EOT >> $phlogpost
$fancytitle
ホリネズミ Horinezumi $gtoday 
☆::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::☆"
$nl
EOT

#Open post with vim at the bottom
vi +20 $phlogpost


