/*
Programmer: Ari Ginsparg
Version 0.1
1/24/2019
Project: Species Sample Generator
sampleGen.cpp

Purpose: cpp file that contains the necessary code to take a given fasta file, randomly extract 20 samples from it, and place these samples in a new fasta file.
If there are 20 or fewer sequences in the input file, all sequences are placed in the output file

Compilation:
g++ sampleGen.cpp -std=c++11 -o sampleGen

Execution:
./sampleGen <sample_input.fasta >sample_output.fasta

*/

#include <iostream>
#include <fstream>
#include <vector>
#include <string>
#include <ctype.h>
#include <cmath>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

using namespace std;

int main()
{
  srand (time(NULL));

  //string to take in the input fasta file line by line
  string line_buffer;
  //vector to hold the contents of the fasta file
  vector<string> input_file;

  //loop to feed the input fasta file into the input vector
  while(getline(cin, line_buffer))
  {
    input_file.push_back(line_buffer);
  }

  //branch, depending on number of sequences in the input file
  //40 lines = 20 samples
  if(input_file.size() <= 40)
  {
    //print out all lines to the output file
    for(int i = 0; i < input_file.size(); i++)
    {
      cout << input_file[i] << endl;
    }
  }
  else
  {
    //pick out 20 random sequences

    //obtain 20 random numbers to pick out which sequences will be used
    vector<int> numbers;

    for(int i = 0; i < 20; i++)
    {
      if(i == 0)
      {
        //insert the first random number
        numbers.push_back(rand() % (input_file.size() / 2));
      }
      else
      {
        //insert all subsequent numbers

        //temp int to hold the value to be inserted into the numbers vector
        int temp = rand() % (input_file.size() / 2);
        //bool to indicate the temp is unique
        bool isunique = false;

        while(isunique == false)
        {
          //prepare for if temp is unique
          isunique = true;

          for(int j = 0; j < numbers.size(); j++)
          {
            //if temp is not unique
            //break to save on time efficiency
            if(temp == numbers[j])
            {
              isunique = false;
              break;
            }
          }

          //give temp a new value for trying again
          temp = rand() % (input_file.size() / 2);
        }

        //insert the unique number
        numbers.push_back(temp);
      }
    }

    //with the list of random line numbers, find the corresponding lines and print them out
    for(int i = 0; i < 20; i++)
    {
      cout << input_file[numbers[i] * 2] << endl;
      cout << input_file[(numbers[i] * 2) + 1] << endl;
    }
  }

  return 0;
}
