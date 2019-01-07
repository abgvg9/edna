/*
Programmer: Ari Ginsparg
Version 0.1
1/7/2019
Project: Species Counter
SpeciesCounter.h

Purpose: h file that contains code for the species_counter data structure, as well as the companion MyPair class

MyPair: hold a string to represent the species, and an int for the corresponding
Contains accessors for the species and count variables
Contains an incremental mutator for the count, and no mutator for the species string
Contains a parameterized constructor for when the species_counter recognizes a new species

species_counter: hold a vector myPairs, holding the observed species and their counts; sorts the species from most to least prevalence (defaults to most recently observed in a tie)
Uses insertion sort to sort the vector after each species is looked at from the input file fir fast processing
Can print the species and their counts from most to least prevalent and with their count
Modified to output the sequences of species to respective output fasta files

Compilation:
g++ counter.cpp -std=c++11

Execution:
./a.out < sample_input.txt
*/

#ifndef SPECIESCOUNTER_H
#define SPECIESCOUNTER_H

#include <iostream>
#include <fstream>
#include <vector>
#include <string>
#include <ctype.h>

using namespace std;

//pair object to pair an inputted species with its count
class MyPair
{
  private:
    string species;
    int count;
  public:
    //parameterized contructor for when a new species is encountered in the input
    MyPair(string input)
    {
      species = input;
      count = 1;
    }

    //function to add 1 to the species as it is found
    void increment()
    {
      count++;
    }

    //function to get the species
    string get_species()
    {
      return species;
    }

    //function to get the encount
    int get_count()
    {
      return count;
    }

    //= overload
    void operator = (MyPair &rhs)
    {
      species = rhs.species;
      count = rhs.count;
    }
};

//class to act as a modified priority queue for quick access to the more prevalent species in the sample
class species_counter
{
    private:

        //vector to hold the list of species and their counts
        vector<MyPair> myList;

        //sorts the list with pairs with the highest counts at the front (index 0)
        //using insertion sort method
        void sortList()
        {
          for(int i = 1; i < myList.size(); i++)
          {
            int j = i - 1;
            MyPair temp = myList[i];

            while(j >= 0 && temp.get_count() < myList[j].get_count())
            {
              myList[j + 1] = myList[j];
              j--;
            }

            myList[j + 1] = temp;
        }
      }



    public:
        species_counter()
        {

        } //default constructor

        ~species_counter()
        {

        } //destructor

        //function that takes in a species name
        //checks the myList for if the input species is present
        //if the species is present, increments the count for the species by 1
        //otherwise, pushes the string to the back of the myList
        void push(const string &input)
        {
          //bool to indicate if the species was found
          bool found = false;

          //checks myList for if the species is present in myList
          for(int i = 0; i < myList.size(); i++)
          {

            //increment if species found, then break the loop
            if(myList[i].get_species() == input)
            {
              myList[i].increment();
              found = true;
              break;
            }
          }

          //pushes the unfound species into myList
          if(found == false)
          {
            MyPair tempPair(input);
            myList.push_back(tempPair);
          }

          //sorts myList after the species is processed
          sortList();
        }

        //to be run immediately after push
        //writes the sequences from the alignment file to an output fasta file
        //sequences are grouped by species in their respective fasta file
        void write_sequence(const string &input)
        {
          /*
          writer.open("example.txt");
          writer << "test" << endl;
          writer.close();
          writer.open("example2.txt");
          writer << "test2" << endl;
          writer.close();
          writer.open("example.txt", ios::app);
          writer << "test3" << endl;
          writer.close();
          string examplename = "cheese";
          */

          //bool to signal to stop reading for the species sequence
          bool stop = false;

          //string to hold the sequence
          string sequence = "";

          //string buffer for reading the alignment file lines
          string buffer;

          //read for the sequence
          while(stop == false)
          {
            getline(cin, buffer);

            //look for lines that have the desired sequence, start with Q
            if(buffer[0] == 'Q')
            {
              //parse out all non-DNA characters by adding characters 1 by 1 if they are DNA characters
              for(int i = 0; i < buffer.size(); i++)
              {
                if(buffer[i] == 'A' || buffer[i] == 'T' || buffer[i] == 'C' || buffer[i] == 'G' || buffer[i] == '-')
                {
                  sequence += buffer[i];
                }
              }

            }

            //end the loop when the sequence is done, detectable when the number starts with a number
            if(isdigit(buffer[0]))
            {
              stop = true;
            }

          }

          ofstream writer;
          writer.open(input  + ".fasta", ios::app);
          writer << sequence << endl;
          writer.close();

        }

        //prints out the contents of the list, line by line
        void print_list()
        {
          cout << myList.size() << " unique species were identified." << endl;
          cout << "The species present are as follows:" << endl;
          cout << "--------------------------------------------------" << endl;
          for(int i = myList.size() - 1; i >= 0; i--)
          {
            cout << myList[i].get_species() << ": " << myList[i].get_count() << endl;
          }

          cout << "--------------------------------------------------" << endl;
          cout << "Fasta files have been written for all identified species, with sequences segregated per species." << endl;
        }


};

#endif
