Hubert Ożarowski 2.5/9
Wytłumaczenie Commitow:
1) wrzucone zostaly tylko pliki z rozszerzeniem .c i .h
2) zostal wrzucony plik makefile, ktory tworzy najprostszy program
3) zostala wrzucona wersja pliku makefile, gdzie program tworzony jest na podstawie biblotek statycznych i dynamicznych oraz pliki obiektowe
4) zostala wrzucona wersja pliku makefile, gdzie wykorzystane sa zmienne autoamtyczne
5) zostala wrzucona wersja piku makefile, gdzie zastosowano regułe prefiksów
6) zostala wrzocna wersja pliku makefile, gdzie zastosowano regule wzorcow +( plus funkcje usuwajaca pliki)

By program mogl dzialac nalezy bedac w folderze z  plikami:
0) jesli nie jest sie w tym katalogu z plikami, to nalezy do niego sie udac poleceniem "cd /(sciezka) " 
1) nalezy uzyc polecenia "make" w konsoli, zostanie stworzony program
2) by go uruchomic nalezy wpisac ./Code2
3) jesli jest problem z bibliotekami to nalezy wywolac w konsoli export LD_LIBRARY_PATH=$(pwd)
4) Po uruchomieniu programu wyswietli sie komunikat by podac bok
5) Po wpisaniu liczby calkowitej otrzymamy pole kwadratu i objetosc szescianu na podstawie dlugosci podanego boku
