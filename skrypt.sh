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
elif [ "$1" == "--init" ]; then
	repo_url="https://github.com/krystiandsw/Podstawa-praca-z-GIT.git"
	git clone $repo_url
	echo "export PATH=\$PATH:$(pwd)" >> ~/.bashrc
	source ~/.bashrc
	echo "Repozytorium sklonowane i sciezka dodana do PATH"
elif [ "$1" == "--error" ] || [ "$1" == "-e" ]; then
	count=100
	if [ -n "$2" ]; then
		count=$2
	fi

	for i in $(seq 1 $count); do
		mkdir -p error$i
		echo "Nazwa pliku: error$i/error$i.txt" > error$i/error$i.txt	
		echo "Nazwa skryptu: $0" >> error$i/error$i.txt
		echo "Data: $(date)" >> error$i/error$i.txt
	done
fi
