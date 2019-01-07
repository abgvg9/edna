/*
Programmer: Ari Ginsparg
Version 0.2
1/7/2019
Project: Species Separator
counter.cpp

Purpose: cpp file that contains the necessary code to operate with a modified SpeciesCouner priority queue-like data structure
The purpose of this program is to take in an alignment file, and separate all sequences into fasta files, separated by species

Fixed issue with having to perform  rm *.fasta. However, all files that share a file name with the species found will have their contents rewritten upon the execution of this program.

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

  string sampleID = "";


  while(getline(cin, species_buffer))
  {

  //pick out ID from line starting with "Que", write ID to sampleID
  if(species_buffer[0] == 'Q' && species_buffer[1] == 'u' && species_buffer[2] == 'e')
  {
    //reset sampleID
    sampleID = "";
    bool post_carat = false;
    for(int i = 0; i < species_buffer.size(); i++)
    {
      if(species_buffer[i] == '>')
      {
        post_carat = true;
      }

      if(post_carat == true)
      {
        sampleID += species_buffer[i];
      }
    }
  }

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

    string species_name_underscore = species_name;

    //change the space to an underscore in the species name for safe file naming conventions
    for(int i = 0; i < species_name_underscore.size(); i++)
    {
      if(species_name_underscore[i] == ' ')
      {
        species_name_underscore[i] = '_';
      }
    }

    //determine if this is the first instance of the species
    bool first_instance = false;

    for(int i = 0; i < counter.size(); i++)
    {
      //indicate if this is the first instance of the species for proper file header
      if(counter[i].get_species() == species_name && counter[i].get_count() == 1)
      {
        first_instance = true;
      }
    }

    counter.write_sequence(species_name_underscore, sampleID, first_instance);
	}


  }

  counter.print_list();

  return 0;
}
