#!/bin/bash

if [[ "$1" == "--date" ]]; then
    echo "$(date)"
elif [[ "$1" == "--logs" ]]; then
    if [[ -z "$2" ]]; then
        for ((i=1; i<=100; i++)); do
            echo "Nazwa pliku: log$i.txt"
            echo "Nazwa skryptu: skrypt.sh"
            echo "Data: $(date)"
            echo
            echo "Treść pliku log$i.txt" > log$i.txt
        done
    else
        count=$2
        for ((i=1; i<=count; i++)); do
            echo "Nazwa pliku: log$i.txt"
            echo "Nazwa skryptu: skrypt.sh"
            echo "Data: $(date)"
            echo
            echo "Treść pliku log$i.txt" > log$i.txt
        done
    fi
elif [[ "$1" == "--help" ]]; then
    echo "Dostępne opcje:"
    echo "--date : Wyświetla dzisiejszą datę."
    echo "--logs : Tworzy pliki logx.txt (x - numer pliku od 1 do 100) i wypełnia je informacjami."
    echo "--logs <liczba> : Tworzy określoną liczbę plików logx.txt (x - numer pliku od 1 do <liczba>) i wypełnia je informacjami."
    echo "--help : Wyświetla dostępne opcje skryptu."
else
    echo "Nieznana opcja. Użyj --help, aby wyświetlić dostępne opcje."
fi
