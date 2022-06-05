ALL = Code2 Code2.o Pole.o Objetosc.o LibPole.a LibObjetosc.so

all: $(ALL)
Code2.o: Code2.c
	gcc -c $<
	
Objetosc.o: Objetosc.c
	gcc -fPIC -c $<
	
Pole.o: Pole.c
	gcc -c $<
LibPole.a: Pole.o
	ar rs $@ $<
	
LibObjetosc.so: Objetosc.o
	gcc -shared -o $@ $<
	
Code2: Code2.o LibPole.a LibObjetosc.so
	gcc -o $@ $^