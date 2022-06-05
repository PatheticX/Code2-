ALL = Code2 Code2.o Pole.o Objetosc.o LibPole.a LibObjetosc.so

all: $(ALL)
Code2.o: Code2.c
	gcc -c Code2.c
	
Objetosc.o: Objetosc.c
	gcc -fPIC -c Objetosc.c
	
Pole.o: Pole.c
	gcc -c Pole.c
	
LibPole.a: Pole.o
	ar rs LibPole.a Pole.o
	
LibObjetosc.so: Objetosc.o
	gcc -shared -o LibObjetosc.so Objetosc.o
	
Code2: Code2.o LibPole.a LibObjetosc.so
	gcc -o Code2 Code2.o LibObjetosc.so LibPole.a