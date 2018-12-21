#!bin/bash
heure=100 ; maxheure=23 ; maxminutes=59
echo "Choisis une heure de sonnerie :" 
read heure
echo "Choisis les minutes :"
read minutes
if [ $heure \> $maxheure ] ; then
    echo "Pas possible, il n'ya que 24 heure dans une journee"
    sh scripts.sh
fi
if [ $minutes \> $maxminutes ] ; then
    echo "Pas possible, il n'ya que $maxminutes dans une heure"
    sh scripts.sh
fi
if [ $heure \< "0" ] ; then
    echo "Pas possible, il n'ya pas heure negative dans une journee"
    sh scripts.sh
fi
if [ $minutes \< "0" ] ; then
    echo "Pas possible, il n'ya pas de minutes negative dans une heure"
    sh scripts.sh
fi
