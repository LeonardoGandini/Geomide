#!/bin/bash

phlogdir="/home/neko/Geomide/gopher-hole/phlog/"
gophtoday="$(date +'%Y-%m-%d_%H,%M')"

blogpost=$phlogdir/$gophtoday.txt

#touch $phlogdir/$gophtoday.txt

#echo "hello world" >> $phlogdir/$gophtoday.txt

read -p  'Titolo: ' gophtitle
nl=$'\n'

postitile=$(figlet -t -k -f /usr/share/figlet/mini.flf $gophtitle)

cat <<EOT >> $blogpost
$postitile
ホリネズミHorinezumi $gophtoday 
☆::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::☆"
$nl
EOT
vi $blogpost
#
#echo $gophtitle | figlet -t -k -f /usr/share/figlet/mini.flf 
#echo "ホリネズミHorinezumi" $gophtoday 
#echo "☆::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::☆"
#echo ""
#echo ""


