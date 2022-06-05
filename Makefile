ALL = Code2 Code2.o Pole.o Objetosc.o LibPole.a LibObjetosc.so

all: $(ALL)

.c.o: 
	gcc -fPIC -c $<
.o:
	gcc -o $@ $^	
Code2.o: Code2.c
Objetosc.o: Objetosc.c
Pole.o: Pole.c
Code2: Code2.o LibPole.a LibObjetosc.so
LibPole.a: Pole.o
	ar rs $@ $<
LibObjetosc.so: Objetosc.o
	gcc -shared -o $@ $<