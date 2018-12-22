#!/bin/bash
heure=0 ; minutes=0 ; maxheure=23 ; maxminutes=59 ; valid=1
while [ $valid -ne 2 ]
do
    echo "Choisis une heure de sonnerie :" 
    read heure
    echo "Choisis les minutes :"
    read minutes
    if [ $heure -gt $maxheure ]
    then
	echo "Pas possible, il n'ya que 24 heure dans une journee"
    else
	valid=2
    fi
    if [ $minutes -gt $maxminutes ]
    then
	echo "Pas possible, il n'ya que $maxminutes dans une heure"
	valid=1
    fi
    if [ $heure -lt "0" ]
    then
	echo "Pas possible, il n'ya pas heure negative dans une journee"
	valid=1
    fi
    if [ $minutes -lt "0" ]
    then
	echo "Pas possible, il n'ya pas de minutes negative dans une heure"
	valid=1
    fi
    if [ $heure -lt "10" ]
    then
	echo "0"$heure"h"
    else
	echo ""$heure"h"
    fi
done

