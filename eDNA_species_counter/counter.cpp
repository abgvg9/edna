/*
Programmer: Ari Ginsparg
Version 1.0
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

Version 1.0 Update:
Reads in aln files in proper format. Searches for ">" at index 0 of species_buffer.
*/

#include "SpeciesCounter.h"
#include <ctype.h>

int main()
{
  species_counter counter;

  string species_buffer;

  while(getline(cin, species_buffer))
  {

	//can pick out species from lines that begin with "Tar"	
	if(species_buffer[0] == 'T' && species_buffer[1] == 'a' && species_buffer[2] == 'r')
	{
		string species_name = "";

		int name_start = 0;

		//find the index in which the species name will start; look for the first underscore
		for(int i = 0; i < species_buffer.size(); i++)
		{
			if(species_buffer[i] == '_' && isalpha(species_buffer[i+1]) )
			{
				name_start = i + 1;
				break;
			}
		}

		int underscore_counter = 0;

		//make the name of the species
		for(int i = name_start; i < species_buffer.size(); i++)
		{
			if(species_buffer[i] == '_')
			{
				underscore_counter++;
				//break once getting the species name
				if(underscore_counter == 2)
				{
					break;
				}
				species_name += ' ';
				
			}
			else
			{
				species_name += species_buffer[i];
			}
			
			
		}
		
		counter.push(species_name);
	}

	
  }

  counter.print_list();

  return 0;
}
