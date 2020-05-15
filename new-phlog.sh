#!/bin/bash
# __   __               
# \ \ / / __ _  _ _  ___
#  \ V / / _` || '_|(_-<
#   \_/  \__,_||_|  /__/
#                       
phdir="/home/neko/Geomide/gopher-hole/phlog/"
gtoday="$(date +'%Y-%m-%d_%H,%M')"
nl=$'\n'

#Ask for post title
read -p  'Post Title: ' gophtitle
#
#Ask for post file name
read -p  'File Title: ' gophfiletitle

#Post title created with figles
fancytitle=$(figlet -t -k -f /usr/share/figlet/mini.flf $gophtitle)

phlogpost=$phdir/$gtoday$gophfiletitle.txt

cat <<EOT >> $phlogpost
$fancytitle
ホリネズミHorinezumi $gtoday 
☆::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::☆"
$nl
EOT
vi +20 $phlogpost
#
#echo $gophtitle | figlet -t -k -f /usr/share/figlet/mini.flf 
#echo "ホリネズミHorinezumi" $gtoday 
#echo "☆::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::☆"
#echo ""
#echo ""


