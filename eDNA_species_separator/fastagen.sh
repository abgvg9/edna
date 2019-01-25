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
    ./separator <$file >results.txt

    if [ ! -e ${file%.*} ]
    then
      #make a new directory based on the name of the file
      mkdir ${file%.*} -v
    fi

    #make the sample fasta files and move them to the new directory
    for fastafile in *; do

      if [ ${fastafile: -6} == ".fasta" ]
      then

        ./sampleGen <$fastafile >sample_$fastafile
        mv sample_$fastafile ${file%.*}
      fi

    done

    #move all fasta files and the results file into the new directory
    mv *.fasta ${file%.*}
    mv results.txt ${file%.*}
  fi
done

echo "All alignment files have been processed."
