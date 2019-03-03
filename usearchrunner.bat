:: USearch Alignment File Script
:: Author: Ari Ginsparg
:: 3/2/19
:: Purpose: To create alignment files from all .fastq files in the directory of this file.
:: This program uses the USearch alignment program, and runs it for all .fasta files at accuracy levels of 6%, 7%, and 8% for later analysis

@ECHO OFF

:: Look for all .fastq files for processing
:: Get location in the D drive!!!
::for %%I in (*) do SET %%temp=%%I ECHO %temp%

usearch -fastq_filter BC01.fastq -fastq_maxee_rate 0.06 -fastaout BC01_6%.fasta
usearch -fastq_filter BC01.fastq -fastq_maxee_rate 0.07 -fastaout BC01_7%.fasta
usearch -fastq_filter BC01.fastq -fastq_maxee_rate 0.08 -fastaout BC01_8%.fasta

usearch -fastq_filter BC02.fastq -fastq_maxee_rate 0.06 -fastaout BC02_6%.fasta
usearch -fastq_filter BC02.fastq -fastq_maxee_rate 0.07 -fastaout BC02_7%.fasta
usearch -fastq_filter BC02.fastq -fastq_maxee_rate 0.08 -fastaout BC02_8%.fasta

usearch -fastq_filter BC03.fastq -fastq_maxee_rate 0.06 -fastaout BC03_6%.fasta
usearch -fastq_filter BC03.fastq -fastq_maxee_rate 0.07 -fastaout BC03_7%.fasta
usearch -fastq_filter BC03.fastq -fastq_maxee_rate 0.08 -fastaout BC03_8%.fasta

usearch -fastq_filter BC04.fastq -fastq_maxee_rate 0.06 -fastaout BC04_6%.fasta
usearch -fastq_filter BC04.fastq -fastq_maxee_rate 0.07 -fastaout BC04_7%.fasta
usearch -fastq_filter BC04.fastq -fastq_maxee_rate 0.08 -fastaout BC04_8%.fasta

usearch -fastq_filter BC05.fastq -fastq_maxee_rate 0.06 -fastaout BC05_6%.fasta
usearch -fastq_filter BC05.fastq -fastq_maxee_rate 0.07 -fastaout BC05_7%.fasta
usearch -fastq_filter BC05.fastq -fastq_maxee_rate 0.08 -fastaout BC05_8%.fasta

usearch -fastq_filter BC06.fastq -fastq_maxee_rate 0.06 -fastaout BC06_6%.fasta
usearch -fastq_filter BC06.fastq -fastq_maxee_rate 0.07 -fastaout BC06_7%.fasta
usearch -fastq_filter BC06.fastq -fastq_maxee_rate 0.08 -fastaout BC06_8%.fasta

usearch -fastq_filter BC07.fastq -fastq_maxee_rate 0.06 -fastaout BC07_6%.fasta
usearch -fastq_filter BC07.fastq -fastq_maxee_rate 0.07 -fastaout BC07_7%.fasta
usearch -fastq_filter BC07.fastq -fastq_maxee_rate 0.08 -fastaout BC07_8%.fasta

usearch -fastq_filter BC08.fastq -fastq_maxee_rate 0.06 -fastaout BC08_6%.fasta
usearch -fastq_filter BC08.fastq -fastq_maxee_rate 0.07 -fastaout BC08_7%.fasta
usearch -fastq_filter BC08.fastq -fastq_maxee_rate 0.08 -fastaout BC08_8%.fasta

usearch -fastq_filter BC09.fastq -fastq_maxee_rate 0.06 -fastaout BC09_6%.fasta
usearch -fastq_filter BC09.fastq -fastq_maxee_rate 0.07 -fastaout BC09_7%.fasta
usearch -fastq_filter BC09.fastq -fastq_maxee_rate 0.08 -fastaout BC09_8%.fasta

usearch -fastq_filter BC010.fastq -fastq_maxee_rate 0.06 -fastaout BC010_6%.fasta
usearch -fastq_filter BC010.fastq -fastq_maxee_rate 0.07 -fastaout BC010_7%.fasta
usearch -fastq_filter BC010.fastq -fastq_maxee_rate 0.08 -fastaout BC010_8%.fasta

usearch -fastq_filter BC011.fastq -fastq_maxee_rate 0.06 -fastaout BC011_6%.fasta
usearch -fastq_filter BC011.fastq -fastq_maxee_rate 0.07 -fastaout BC011_7%.fasta
usearch -fastq_filter BC011.fastq -fastq_maxee_rate 0.08 -fastaout BC011_8%.fasta

usearch -fastq_filter BC012.fastq -fastq_maxee_rate 0.06 -fastaout BC012_6%.fasta
usearch -fastq_filter BC012.fastq -fastq_maxee_rate 0.07 -fastaout BC012_7%.fasta
usearch -fastq_filter BC012.fastq -fastq_maxee_rate 0.08 -fastaout BC012_8%.fasta
::---------------------------------------------
usearch -usearch_global BC01_6%.fasta -db fishdatabase2.fas -id 0.90 -strand plus -alnout BC01_6%_90%match.aln -maxaccepts 1
usearch -usearch_global BC01_7%.fasta -db fishdatabase2.fas -id 0.90 -strand plus -alnout BC01_7%_90%match.aln -maxaccepts 1
usearch -usearch_global BC01_8%.fasta -db fishdatabase2.fas -id 0.90 -strand plus -alnout BC01_8%_90%match.aln -maxaccepts 1

usearch -usearch_global BC02_6%.fasta -db fishdatabase2.fas -id 0.90 -strand plus -alnout BC02_6%_90%match.aln -maxaccepts 1
usearch -usearch_global BC02_7%.fasta -db fishdatabase2.fas -id 0.90 -strand plus -alnout BC02_7%_90%match.aln -maxaccepts 1
usearch -usearch_global BC02_8%.fasta -db fishdatabase2.fas -id 0.90 -strand plus -alnout BC02_8%_90%match.aln -maxaccepts 1

usearch -usearch_global BC03_6%.fasta -db fishdatabase2.fas -id 0.90 -strand plus -alnout BC03_6%_90%match.aln -maxaccepts 1
usearch -usearch_global BC03_7%.fasta -db fishdatabase2.fas -id 0.90 -strand plus -alnout BC03_7%_90%match.aln -maxaccepts 1
usearch -usearch_global BC03_8%.fasta -db fishdatabase2.fas -id 0.90 -strand plus -alnout BC03_8%_90%match.aln -maxaccepts 1

usearch -usearch_global BC04_6%.fasta -db fishdatabase2.fas -id 0.90 -strand plus -alnout BC04_6%_90%match.aln -maxaccepts 1
usearch -usearch_global BC04_7%.fasta -db fishdatabase2.fas -id 0.90 -strand plus -alnout BC04_7%_90%match.aln -maxaccepts 1
usearch -usearch_global BC04_8%.fasta -db fishdatabase2.fas -id 0.90 -strand plus -alnout BC04_8%_90%match.aln -maxaccepts 1

usearch -usearch_global BC05_6%.fasta -db fishdatabase2.fas -id 0.90 -strand plus -alnout BC05_6%_90%match.aln -maxaccepts 1
usearch -usearch_global BC05_7%.fasta -db fishdatabase2.fas -id 0.90 -strand plus -alnout BC05_7%_90%match.aln -maxaccepts 1
usearch -usearch_global BC05_8%.fasta -db fishdatabase2.fas -id 0.90 -strand plus -alnout BC05_8%_90%match.aln -maxaccepts 1

usearch -usearch_global BC06_6%.fasta -db fishdatabase2.fas -id 0.90 -strand plus -alnout BC06_6%_90%match.aln -maxaccepts 1
usearch -usearch_global BC06_7%.fasta -db fishdatabase2.fas -id 0.90 -strand plus -alnout BC06_7%_90%match.aln -maxaccepts 1
usearch -usearch_global BC06_8%.fasta -db fishdatabase2.fas -id 0.90 -strand plus -alnout BC06_8%_90%match.aln -maxaccepts 1

usearch -usearch_global BC07_6%.fasta -db fishdatabase2.fas -id 0.90 -strand plus -alnout BC07_6%_90%match.aln -maxaccepts 1
usearch -usearch_global BC07_7%.fasta -db fishdatabase2.fas -id 0.90 -strand plus -alnout BC07_7%_90%match.aln -maxaccepts 1
usearch -usearch_global BC07_8%.fasta -db fishdatabase2.fas -id 0.90 -strand plus -alnout BC07_8%_90%match.aln -maxaccepts 1

usearch -usearch_global BC08_6%.fasta -db fishdatabase2.fas -id 0.90 -strand plus -alnout BC08_6%_90%match.aln -maxaccepts 1
usearch -usearch_global BC08_7%.fasta -db fishdatabase2.fas -id 0.90 -strand plus -alnout BC08_7%_90%match.aln -maxaccepts 1
usearch -usearch_global BC08_8%.fasta -db fishdatabase2.fas -id 0.90 -strand plus -alnout BC08_8%_90%match.aln -maxaccepts 1

usearch -usearch_global BC09_6%.fasta -db fishdatabase2.fas -id 0.90 -strand plus -alnout BC09_6%_90%match.aln -maxaccepts 1
usearch -usearch_global BC09_7%.fasta -db fishdatabase2.fas -id 0.90 -strand plus -alnout BC09_7%_90%match.aln -maxaccepts 1
usearch -usearch_global BC09_8%.fasta -db fishdatabase2.fas -id 0.90 -strand plus -alnout BC09_8%_90%match.aln -maxaccepts 1

usearch -usearch_global BC010_6%.fasta -db fishdatabase2.fas -id 0.90 -strand plus -alnout BC010_6%_90%match.aln -maxaccepts 1
usearch -usearch_global BC010_7%.fasta -db fishdatabase2.fas -id 0.90 -strand plus -alnout BC010_7%_90%match.aln -maxaccepts 1
usearch -usearch_global BC010_8%.fasta -db fishdatabase2.fas -id 0.90 -strand plus -alnout BC010_8%_90%match.aln -maxaccepts 1

usearch -usearch_global BC011_6%.fasta -db fishdatabase2.fas -id 0.90 -strand plus -alnout BC011_6%_90%match.aln -maxaccepts 1
usearch -usearch_global BC011_7%.fasta -db fishdatabase2.fas -id 0.90 -strand plus -alnout BC011_7%_90%match.aln -maxaccepts 1
usearch -usearch_global BC011_8%.fasta -db fishdatabase2.fas -id 0.90 -strand plus -alnout BC011_8%_90%match.aln -maxaccepts 1

usearch -usearch_global BC012_6%.fasta -db fishdatabase2.fas -id 0.90 -strand plus -alnout BC012_6%_90%match.aln -maxaccepts 1
usearch -usearch_global BC012_7%.fasta -db fishdatabase2.fas -id 0.90 -strand plus -alnout BC012_7%_90%match.aln -maxaccepts 1
usearch -usearch_global BC012_8%.fasta -db fishdatabase2.fas -id 0.90 -strand plus -alnout BC012_8%_90%match.aln -maxaccepts 1

