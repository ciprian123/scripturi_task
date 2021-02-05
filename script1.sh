#!/bin/bash

# scriptul va avea 2 parametrii la linia de comanda, si anume calea catre directorul unde cream directoarele,
# precum si fisierul care va contine structura directoarelor
cale_destinatie=$1
cale_structura_directoare=$2

if [ ! -d "$1" ]; then
    echo "Calea destiatie incorecta!"
    exit 1
fi

if [ ! -f "$2" ]; then
    echo "Calea structura incorecta!"
    exit 2
fi

for linie in $(cat $2)
do
    cale_curenta=$cale_destinatie$linie
    if [ ! -d "$cale_curenta" ]; then
        echo "Am creat **  " $cale_curenta "  **"
        mkdir $cale_curenta
    else
        echo "Directorul **  " $cale_curenta " ** deja exista!"
    fi
done
