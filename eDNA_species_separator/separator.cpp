/*
Programmer: Ari Ginsparg
Version 0.1
1/7/2019
Project: Species Separator
counter.cpp

Purpose: cpp file that contains the necessary code to operate with a modified SpeciesCouner priority queue-like data structure
The purpose of this program is to take in an alignment file, and separate all sequences into fasta files, separated by species

Note: Current version of program appends all data to files that share the same name as species that occur in the alignment file. It is recommended to remove any existing fasta files from the directory before executing this program.
The command rm *.fasta will delete all fasta files from the directory.

Compilation:
g++ separator.cpp -std=c++11

Execution:
./a.out <sample_input.txt

*/

#include "SpeciesCounter.h"



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

    //change the space to an underscore in the species name for safe file naming conventions
    for(int i = 0; i < species_name.size(); i++)
    {
      if(species_name[i] == ' ')
      {
        species_name[i] = '_';
      }
    }

    counter.write_sequence(species_name);
	}


  }

  counter.print_list();

  return 0;
}
