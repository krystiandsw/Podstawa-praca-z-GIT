#!/bin/bash

if [ "$1" == "--date" ]; then
	date
elif [ "$1" == "--logs" ]; then
	count=100
	if [ -n "$2" ]; then
		count=$2
	fi

	for i in $(seq 1 $count); do
		echo "Nazwa pliku: log$i.txt" > log$i.txt	
		echo "Nazwa skryptu: $0" >> log$i.txt
		echo "Data: $(date)" >> log$i.txt
	done
elif [ "$1" == "--help" ]; then
	echo "Dostepne opcje:"
	echo "--date - wyswietla date"
	echo "--logs [liczba] - tworzy pliki log (domyslny 100)"	
	echo "--help - wyswietla pomoc"
fi
