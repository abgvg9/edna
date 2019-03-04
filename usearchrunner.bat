:: USearch Alignment File Script
:: Author: Ari Ginsparg
:: 3/2/19
:: Purpose: To create alignment files from all .fastq files in the directory of this file. Program is not dynamic in response to the number of barcodes
:: This program uses the USearch alignment program, and runs it for all .fasta files at accuracy levels of 6, 7, and 8 for later analysis
:: Our lab group currently only has 12 unique barcodes, so the program runs for 12 barcodes
@ECHO OFF

:: Look for all .fastq files for processing
::for I in (*) do SET temp=I ECHO temp

usearch -fastq_filter BC01.fastq -fastq_maxee_rate 0.06 -fastaout BC01_6.fasta
usearch -fastq_filter BC01.fastq -fastq_maxee_rate 0.07 -fastaout BC01_7.fasta
usearch -fastq_filter BC01.fastq -fastq_maxee_rate 0.08 -fastaout BC01_8.fasta

usearch -fastq_filter BC02.fastq -fastq_maxee_rate 0.06 -fastaout BC02_6.fasta
usearch -fastq_filter BC02.fastq -fastq_maxee_rate 0.07 -fastaout BC02_7.fasta
usearch -fastq_filter BC02.fastq -fastq_maxee_rate 0.08 -fastaout BC02_8.fasta

usearch -fastq_filter BC03.fastq -fastq_maxee_rate 0.06 -fastaout BC03_6.fasta
usearch -fastq_filter BC03.fastq -fastq_maxee_rate 0.07 -fastaout BC03_7.fasta
usearch -fastq_filter BC03.fastq -fastq_maxee_rate 0.08 -fastaout BC03_8.fasta

usearch -fastq_filter BC04.fastq -fastq_maxee_rate 0.06 -fastaout BC04_6.fasta
usearch -fastq_filter BC04.fastq -fastq_maxee_rate 0.07 -fastaout BC04_7.fasta
usearch -fastq_filter BC04.fastq -fastq_maxee_rate 0.08 -fastaout BC04_8.fasta

usearch -fastq_filter BC05.fastq -fastq_maxee_rate 0.06 -fastaout BC05_6.fasta
usearch -fastq_filter BC05.fastq -fastq_maxee_rate 0.07 -fastaout BC05_7.fasta
usearch -fastq_filter BC05.fastq -fastq_maxee_rate 0.08 -fastaout BC05_8.fasta

usearch -fastq_filter BC06.fastq -fastq_maxee_rate 0.06 -fastaout BC06_6.fasta
usearch -fastq_filter BC06.fastq -fastq_maxee_rate 0.07 -fastaout BC06_7.fasta
usearch -fastq_filter BC06.fastq -fastq_maxee_rate 0.08 -fastaout BC06_8.fasta

usearch -fastq_filter BC07.fastq -fastq_maxee_rate 0.06 -fastaout BC07_6.fasta
usearch -fastq_filter BC07.fastq -fastq_maxee_rate 0.07 -fastaout BC07_7.fasta
usearch -fastq_filter BC07.fastq -fastq_maxee_rate 0.08 -fastaout BC07_8.fasta

usearch -fastq_filter BC08.fastq -fastq_maxee_rate 0.06 -fastaout BC08_6.fasta
usearch -fastq_filter BC08.fastq -fastq_maxee_rate 0.07 -fastaout BC08_7.fasta
usearch -fastq_filter BC08.fastq -fastq_maxee_rate 0.08 -fastaout BC08_8.fasta

usearch -fastq_filter BC09.fastq -fastq_maxee_rate 0.06 -fastaout BC09_6.fasta
usearch -fastq_filter BC09.fastq -fastq_maxee_rate 0.07 -fastaout BC09_7.fasta
usearch -fastq_filter BC09.fastq -fastq_maxee_rate 0.08 -fastaout BC09_8.fasta

usearch -fastq_filter BC10.fastq -fastq_maxee_rate 0.06 -fastaout BC10_6.fasta
usearch -fastq_filter BC10.fastq -fastq_maxee_rate 0.07 -fastaout BC10_7.fasta
usearch -fastq_filter BC10.fastq -fastq_maxee_rate 0.08 -fastaout BC10_8.fasta

usearch -fastq_filter BC11.fastq -fastq_maxee_rate 0.06 -fastaout BC11_6.fasta
usearch -fastq_filter BC11.fastq -fastq_maxee_rate 0.07 -fastaout BC11_7.fasta
usearch -fastq_filter BC11.fastq -fastq_maxee_rate 0.08 -fastaout BC11_8.fasta

usearch -fastq_filter BC12.fastq -fastq_maxee_rate 0.06 -fastaout BC12_6.fasta
usearch -fastq_filter BC12.fastq -fastq_maxee_rate 0.07 -fastaout BC12_7.fasta
usearch -fastq_filter BC12.fastq -fastq_maxee_rate 0.08 -fastaout BC12_8.fasta
::---------------------------------------------
usearch -usearch_global BC01_6.fasta -db fishdatabase2.fas -id 0.90 -strand plus -alnout BC01_6_90match.aln -maxaccepts 1
usearch -usearch_global BC01_7.fasta -db fishdatabase2.fas -id 0.90 -strand plus -alnout BC01_7_90match.aln -maxaccepts 1
usearch -usearch_global BC01_8.fasta -db fishdatabase2.fas -id 0.90 -strand plus -alnout BC01_8_90match.aln -maxaccepts 1


usearch -usearch_global BC02_6.fasta -db fishdatabase2.fas -id 0.90 -strand plus -alnout BC02_6_90match.aln -maxaccepts 1
usearch -usearch_global BC02_7.fasta -db fishdatabase2.fas -id 0.90 -strand plus -alnout BC02_7_90match.aln -maxaccepts 1
usearch -usearch_global BC02_8.fasta -db fishdatabase2.fas -id 0.90 -strand plus -alnout BC02_8_90match.aln -maxaccepts 1



usearch -usearch_global BC03_6.fasta -db fishdatabase2.fas -id 0.90 -strand plus -alnout BC03_6_90match.aln -maxaccepts 1
usearch -usearch_global BC03_7.fasta -db fishdatabase2.fas -id 0.90 -strand plus -alnout BC03_7_90match.aln -maxaccepts 1
usearch -usearch_global BC03_8.fasta -db fishdatabase2.fas -id 0.90 -strand plus -alnout BC03_8_90match.aln -maxaccepts 1



usearch -usearch_global BC04_6.fasta -db fishdatabase2.fas -id 0.90 -strand plus -alnout BC04_6_90match.aln -maxaccepts 1
usearch -usearch_global BC04_7.fasta -db fishdatabase2.fas -id 0.90 -strand plus -alnout BC04_7_90match.aln -maxaccepts 1
usearch -usearch_global BC04_8.fasta -db fishdatabase2.fas -id 0.90 -strand plus -alnout BC04_8_90match.aln -maxaccepts 1



usearch -usearch_global BC05_6.fasta -db fishdatabase2.fas -id 0.90 -strand plus -alnout BC05_6_90match.aln -maxaccepts 1
usearch -usearch_global BC05_7.fasta -db fishdatabase2.fas -id 0.90 -strand plus -alnout BC05_7_90match.aln -maxaccepts 1
usearch -usearch_global BC05_8.fasta -db fishdatabase2.fas -id 0.90 -strand plus -alnout BC05_8_90match.aln -maxaccepts 1



usearch -usearch_global BC06_6.fasta -db fishdatabase2.fas -id 0.90 -strand plus -alnout BC06_6_90match.aln -maxaccepts 1
usearch -usearch_global BC06_7.fasta -db fishdatabase2.fas -id 0.90 -strand plus -alnout BC06_7_90match.aln -maxaccepts 1
usearch -usearch_global BC06_8.fasta -db fishdatabase2.fas -id 0.90 -strand plus -alnout BC06_8_90match.aln -maxaccepts 1



usearch -usearch_global BC07_6.fasta -db fishdatabase2.fas -id 0.90 -strand plus -alnout BC07_6_90match.aln -maxaccepts 1
usearch -usearch_global BC07_7.fasta -db fishdatabase2.fas -id 0.90 -strand plus -alnout BC07_7_90match.aln -maxaccepts 1
usearch -usearch_global BC07_8.fasta -db fishdatabase2.fas -id 0.90 -strand plus -alnout BC07_8_90match.aln -maxaccepts 1



usearch -usearch_global BC08_6.fasta -db fishdatabase2.fas -id 0.90 -strand plus -alnout BC08_6_90match.aln -maxaccepts 1
usearch -usearch_global BC08_7.fasta -db fishdatabase2.fas -id 0.90 -strand plus -alnout BC08_7_90match.aln -maxaccepts 1
usearch -usearch_global BC08_8.fasta -db fishdatabase2.fas -id 0.90 -strand plus -alnout BC08_8_90match.aln -maxaccepts 1



usearch -usearch_global BC09_6.fasta -db fishdatabase2.fas -id 0.90 -strand plus -alnout BC09_6_90match.aln -maxaccepts 1
usearch -usearch_global BC09_7.fasta -db fishdatabase2.fas -id 0.90 -strand plus -alnout BC09_7_90match.aln -maxaccepts 1
usearch -usearch_global BC09_8.fasta -db fishdatabase2.fas -id 0.90 -strand plus -alnout BC09_8_90match.aln -maxaccepts 1



usearch -usearch_global BC10_6.fasta -db fishdatabase2.fas -id 0.90 -strand plus -alnout BC10_6_90match.aln -maxaccepts 1
usearch -usearch_global BC10_7.fasta -db fishdatabase2.fas -id 0.90 -strand plus -alnout BC10_7_90match.aln -maxaccepts 1
usearch -usearch_global BC10_8.fasta -db fishdatabase2.fas -id 0.90 -strand plus -alnout BC10_8_90match.aln -maxaccepts 1



usearch -usearch_global BC11_6.fasta -db fishdatabase2.fas -id 0.90 -strand plus -alnout BC11_6_90match.aln -maxaccepts 1
usearch -usearch_global BC11_7.fasta -db fishdatabase2.fas -id 0.90 -strand plus -alnout BC11_7_90match.aln -maxaccepts 1
usearch -usearch_global BC11_8.fasta -db fishdatabase2.fas -id 0.90 -strand plus -alnout BC11_8_90match.aln -maxaccepts 1



usearch -usearch_global BC12_6.fasta -db fishdatabase2.fas -id 0.90 -strand plus -alnout BC12_6_90match.aln -maxaccepts 1
usearch -usearch_global BC12_7.fasta -db fishdatabase2.fas -id 0.90 -strand plus -alnout BC12_7_90match.aln -maxaccepts 1
usearch -usearch_global BC12_8.fasta -db fishdatabase2.fas -id 0.90 -strand plus -alnout BC12_8_90match.aln -maxaccepts 1

>nul find ">" BC01_6_90match.aln && (
  echo ">" was found.
) || (
	del "BC01_6_90match.aln"
    echo ">" was NOT found.
)
>nul find ">" BC01_7_90match.aln && (
  echo ">" was found.
) || (
	del "BC01_7_90match.aln"
    echo ">" was NOT found.
)
>nul find ">" BC01_8_90match.aln && (
  echo ">" was found.
) || (
	del "BC01_8_90match.aln"
    echo ">" was NOT found.
)
>nul find ">" BC02_6_90match.aln && (
  echo ">" was found.
) || (
	del "BC02_6_90match.aln"
    echo ">" was NOT found.
)
>nul find ">" BC02_7_90match.aln && (
  echo ">" was found.
) || (
	del "BC02_7_90match.aln"
    echo ">" was NOT found.
)
>nul find ">" BC02_8_90match.aln && (
  echo ">" was found.
) || (
	del "BC02_8_90match.aln"
    echo ">" was NOT found.
)
>nul find ">" BC03_6_90match.aln && (
  echo ">" was found.
) || (
	del "BC03_6_90match.aln"
    echo ">" was NOT found.
)
>nul find ">" BC03_7_90match.aln && (
  echo ">" was found.
) || (
	del "BC03_7_90match.aln"
    echo ">" was NOT found.
)
>nul find ">" BC03_8_90match.aln && (
  echo ">" was found.
) || (
	del "BC03_8_90match.aln"
    echo ">" was NOT found.
)
>nul find ">" BC04_6_90match.aln && (
  echo ">" was found.
) || (
	del "BC04_6_90match.aln"
    echo ">" was NOT found.
)
>nul find ">" BC04_7_90match.aln && (
  echo ">" was found.
) || (
	del "BC04_7_90match.aln"
    echo ">" was NOT found.
)
>nul find ">" BC04_8_90match.aln && (
  echo ">" was found.
) || (
	del "BC04_8_90match.aln"
    echo ">" was NOT found.
)
>nul find ">" BC05_6_90match.aln && (
  echo ">" was found.
) || (
	del "BC05_6_90match.aln"
    echo ">" was NOT found.
)
>nul find ">" BC05_7_90match.aln && (
  echo ">" was found.
) || (
	del "BC05_7_90match.aln"
    echo ">" was NOT found.
)
>nul find ">" BC05_8_90match.aln && (
  echo ">" was found.
) || (
	del "BC05_8_90match.aln"
    echo ">" was NOT found.
)
>nul find ">" BC06_6_90match.aln && (
  echo ">" was found.
) || (
	del "BC06_6_90match.aln"
    echo ">" was NOT found.
)
>nul find ">" BC06_7_90match.aln && (
  echo ">" was found.
) || (
	del "BC06_7_90match.aln"
    echo ">" was NOT found.
)
>nul find ">" BC06_8_90match.aln && (
  echo ">" was found.
) || (
	del "BC06_8_90match.aln"
    echo ">" was NOT found.
)
>nul find ">" BC07_6_90match.aln && (
  echo ">" was found.
) || (
	del "BC07_6_90match.aln"
    echo ">" was NOT found.
)
>nul find ">" BC07_7_90match.aln && (
  echo ">" was found.
) || (
	del "BC07_7_90match.aln"
    echo ">" was NOT found.
)
>nul find ">" BC07_8_90match.aln && (
  echo ">" was found.
) || (
	del "BC07_8_90match.aln"
    echo ">" was NOT found.
)
>nul find ">" BC08_6_90match.aln && (
  echo ">" was found.
) || (
	del "BC08_6_90match.aln"
    echo ">" was NOT found.
)
>nul find ">" BC08_7_90match.aln && (
  echo ">" was found.
) || (
	del "BC08_7_90match.aln"
    echo ">" was NOT found.
)
>nul find ">" BC08_8_90match.aln && (
  echo ">" was found.
) || (
	del "BC08_8_90match.aln"
    echo ">" was NOT found.
)
>nul find ">" BC09_6_90match.aln && (
  echo ">" was found.
) || (
	del "BC09_6_90match.aln"
    echo ">" was NOT found.
)
>nul find ">" BC09_7_90match.aln && (
  echo ">" was found.
) || (
	del "BC09_7_90match.aln"
    echo ">" was NOT found.
)
>nul find ">" BC09_8_90match.aln && (
  echo ">" was found.
) || (
	del "BC09_8_90match.aln"
    echo ">" was NOT found.
)
>nul find ">" BC10_6_90match.aln && (
  echo ">" was found.
) || (
	del "BC10_6_90match.aln"
    echo ">" was NOT found.
)
>nul find ">" BC10_7_90match.aln && (
  echo ">" was found.
) || (
	del "BC10_7_90match.aln"
    echo ">" was NOT found.
)
>nul find ">" BC10_8_90match.aln && (
  echo ">" was found.
) || (
	del "BC10_8_90match.aln"
    echo ">" was NOT found.
)
>nul find ">" BC11_6_90match.aln && (
  echo ">" was found.
) || (
	del "BC11_6_90match.aln"
    echo ">" was NOT found.
)
>nul find ">" BC11_7_90match.aln && (
  echo ">" was found.
) || (
	del "BC11_7_90match.aln"
    echo ">" was NOT found.
)
>nul find ">" BC11_8_90match.aln && (
  echo ">" was found.
) || (
	del "BC11_8_90match.aln"
    echo ">" was NOT found.
)
>nul find ">" BC12_6_90match.aln && (
  echo ">" was found.
) || (
	del "BC12_6_90match.aln"
    echo ">" was NOT found.
)
>nul find ">" BC12_7_90match.aln && (
  echo ">" was found.
) || (
	del "BC12_7_90match.aln"
    echo ">" was NOT found.
)
>nul find ">" BC12_8_90match.aln && (
  echo ">" was found.
) || (
	del "BC12_8_90match.aln"
    echo ">" was NOT found.
)
