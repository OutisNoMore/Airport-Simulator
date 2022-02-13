IDIR1 = src
IDIR2 = dep
ODIR = bin
CC = g++
FLAGS = -g -Wall -I $(IDIR1) -I $(IDIR2) -I $(ODIR)

AirportSim.exe: $(ODIR)/main.o $(ODIR)/Airport.o $(ODIR)/Airplane.o
	$(CC) $(FLAGS) $^ -o $(ODIR)/$@
main.o: $(IDIR1)/main.cpp
	$(CC) $(FLAGS) -c $< -o $(ODIR)/$@
Airport.o: $(IDIR2)/Airport.cpp
	$(CC) $(FLAGS) -c $< -o $(ODIR)/$@
Airplane.o: $(IDIR2)/Airplane.cpp
	$(CC) $(FLAGS) -c $< -o $(ODIR)/$@
clean:
	rm -rf $(ODIR)/*.o $(ODIR)/AirportSim.exe $(ODIR)/report.txt
