#load mamba environment with desired packages using alias that was made 
load_mamba

#to run fastQC on the two fastq files type:
#-o specifies the output directory where FASTQC results are saved 
#--no group disables the grouping of bases for better visualisation of per base sequence quality plot 
fastqc -o /project/scro5214/1_linux/2_rnaseq/3_analysis/1_fastqc --nogroup 1_fastq/cd4_rep1_read1.fastq.gz 1_fastq/cd4_rep1_read2.fastq.gz


#to run multiQC on the two fastq files type:
#make sure you are within the folder that the fastq files are located in
#you can use the -n flag to name the output of multiqc 
multiqc . -o /project/scro5214/1_linux/2_rnaseq/3_analysis/reports 

