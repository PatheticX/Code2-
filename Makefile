ALL = Code2 Code2.o Pole.o Objetosc.o LibPole.a LibObjetosc.so 
.PHONY: clean

all: $(ALL)

%sc.o: 
	gcc -fPIC -c $<
%le.o: 
	gcc -c $<
%e2.o: 
	gcc -c $<
%le.a: 
	ar rs $@ $<
%sc.so: 
	gcc -shared -o $@ $<
%e2:
	gcc -o $@ $^	
Code2.o: Code2.c LibObjetosc.h LibPole.h
Objetosc.o: Objetosc.c
Pole.o: Pole.c
LibPole.a: Pole.o
LibObjetosc.so: Objetosc.o
Code2: Code2.o LibPole.a LibObjetosc.so
clean:
	rm -f Code2 *.o *.a *.so

