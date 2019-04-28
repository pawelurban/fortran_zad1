# Fortran - Zadanie 1
---
## Opis zadania

Zadanie polegało na napisaniu kilku wersji mnożenia macierzy w języku Fortran oraz porównania ich działania z funkcją **matmul**. Dokładny opis zadania znajduje się [tutaj](http://home.agh.edu.pl/~macwozni/fort/zadanie1.pdf). 
Pliki odpowiednich modułów znajdują się w folderze **src/**.

Plik **main.F90** zawiera program pozwalający na uzyskanie danych do utworzenia wykresów.
Plik **gnuplot_batch** zawiera skrypt pozwalający na wygenerowanie wykresów przy pomocy plików z danymi znajdujących się w folderze **res/**.

---
## Testowane konfiguracje

Napisane funkcje testowano dla typów **real** o precyzji **kind** : **4**,**8**,**16** dla macierzy o rozmiarach **10, 20,40, 80, 160, 320, 640, 1280**.

---

## Wyniki pomiarów

Wyniki przedstawione są na poniższycg wykresach:

### Dla typu real o precyzji kind = 4
![](res/wykres4.pdf)
### Dla typu real o precyzji kind = 8
![](res/wykres8.pdf)
### Dla typu real o precyzji kind = 16
![](res/wykres16.pdf)

---
## Wnioski 
+ Najgorsze czasowo wyniki zostały osiągnięte przy pomocy funkcji **naivmull**, najlepsze zaś przy pomocy wbudowanej funkcji **matmul**, 
+ Funkcja **bettmull** wykonywała mnożenie nieznacznie (lecz jednak) szybciej od funkcji **naivmull**,
+ Dla małych rozmiarów macierzy wypełnionych liczbami typu **real** o precyzji **kind = 16** funkcja **matmul** dawała gorsze wyniki niż naiwna metoda **naivmul**. Nie jest to jednak nic zaskakującego, nierzadko algorytmy naiwne radzę sobie lepiej niż bardziej zaawansowane dla małych rozmiarów danych. Rzadko jednak w praktyce wykonuje się obliczenia na tak małych macierzach.

Podsumowując, w praktycznych zastosowaniach zdecydowanie lepiej wykorzystać wbudowaną funkcję **matmul**, niż inne zaimplementowane algorytmy mnożenia macierzy.
