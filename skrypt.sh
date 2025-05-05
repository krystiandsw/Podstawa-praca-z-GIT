#!/bin/bash

if [ "$1" == "--date" ] || [ "$1" == "-d" ]; then
	date
elif [ "$1" == "--logs" ] || [ "$1" == "-l" ]; then
	count=100
	if [ -n "$2" ]; then
		count=$2
	fi

	for i in $(seq 1 $count); do
		echo "Nazwa pliku: log$i.txt" > log$i.txt	
		echo "Nazwa skryptu: $0" >> log$i.txt
		echo "Data: $(date)" >> log$i.txt
	done
elif [ "$1" == "--help" ] || [ "$1" == "-h" ]; then
	echo "Dostepne opcje:"
	echo "--date (-d) - wyswietla date"
	echo "--logs (-l) [liczba] - tworzy pliki log (domyslny 100)"
	echo "--help (-h) - wyswietla pomoc"
fi
