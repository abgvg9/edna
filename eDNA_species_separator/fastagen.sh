#!/bin/bash

#Fasta file generator
#Author: Ari Ginsparg
#Version 0.1
#1/9/19
#Purpose: To analyze a directory and pull data from alignment (.aln) files and store the data in .fasta files. Uses the species separator program.

#Initialize on first occurence on computer with: chmod +x fastagen.sh
#Run with: ./fastagen.sh

#look for all .aln files for processing
for file in *; do
  #
  if [ ${file: -4} == ".aln" ]
  then
    echo "Processing" $file

    #run a.out executable with given alignment file, output results to a text file
    ./a.out <$file >results.txt

    #make a new directory based on the name of the file
    mkdir ${file%.*}

    #move all fasta files and the results file into the new directory
    mv *.fasta ${file%.*}
    mv results.txt ${file%.*}
  fi
done

echo "All alignment files have been processed."
