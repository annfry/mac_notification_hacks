#!/bin/bash0
# Free book notification
# Create a notification icon to show what's available for free at 
# https://www.packtpub.com/packt/offers/free-learning
# TODO: FIX : clicking on notification should open browser with url.
title=`curl https://www.packtpub.com/packt/offers/free-learning/ 2>/dev/null | grep -A2 "dotd-title" | cut -f1 -d"<" | tr -d "\t\n"`
caption="Free Packtpub Book"
/usr/bin/notify-send -i ~/.icons/icon256-packt.png \
 "$caption" "book title: $title \n https://www.packtpub.com/packt/offers/free-learning/" 
