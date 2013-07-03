all: clean client.cpp cell.o player.o server.o 
	g++ -o client.o client.cpp -lncurses

server.o: server.cpp
	g++ -o server.o server.cpp 

player.o: player.cpp
	g++ -c player.cpp -lncurses

cell.o: cell.cpp
	g++ -c cell.cpp -lncurses

clean:
	rm -rf client.o cell.o main.o player.o server.o
