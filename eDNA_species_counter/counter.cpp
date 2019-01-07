/*
Programmer: Ari Ginsparg
Version 0.1
12/10/18
Project: Species Counter
counter.cpp

Purpose: cpp file that contains the necessary code to operate with the SpeciesCouner priority queue-like data structure
Takes in species names from an input file and adds them to the SpeciesCouner, and then prints all species and their counts in descending order after it processes the file

Compilation:
g++ counter.cpp -std=c++11

Execution:
./a.out <sample_input.txt

Execution with file output:
./a.out <sample_input.txt >output.txt

Notes:
Currently do not know the format of the species input file. Will likely need to adjust the string processing method so that only the species name is inputted into the species_counter.
*/

#include "SpeciesCounter.h"

int main()
{
  species_counter counter;

  string species_buffer;

  while(getline(cin, species_buffer))
  {
    counter.push(species_buffer);
  }

  counter.print_list();

  return 0;
}
