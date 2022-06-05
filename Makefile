ALL = Code2 Code2.o Pole.o Objetosc.o LibPole.a LibObjetosc.so movefiles
.PHONY: clear movefiles
vpath %.c src
vpath %.h include
vpath %.a lib
vpath %.so lib
all: $(ALL)

%sc.o: 
	gcc -fPIC -c $< 
%le.o: 
	gcc -c $<
%e2.o: 
	gcc -c $< -L./lib -I./include
%le.a: 
	ar rs $@ $<
%sc.so: 
	gcc -shared -o $@ $<
%e2:
	gcc -o $@ $^	-L./lib -I./include
Code2.o: Code2.c LibObjetosc.h LibPole.h
Objetosc.o: Objetosc.c
Pole.o: Pole.c
LibPole.a: Pole.o
LibObjetosc.so: Objetosc.o
Code2: Code2.o LibPole.a LibObjetosc.so
clean:
	rm -f ./bin/Code2 *.o ./lib/*.a ./lib/*.so
movefiles:
	mv LibObjetosc.so ./lib
	mv LibPole.a ./lib
	mv Code2 ./bin

