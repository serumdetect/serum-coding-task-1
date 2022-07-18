# Serum interview coding task

Write an algorithm (a function or a command line script) that computes the
per-base coverage of given genomic intervals.

Perform coverage computation with the following constraints.

* Only count uniquely mapped, properly paired reads
* Disregard secondary, supplementary, QC failed or duplicated reads
* Only count nucleotides with quality >= 10
* Deletions with respect to the reference genome should be disregarded

For example, if the input is BAM `input.bam` and a BED file with the following
contents:

    22  22488245    22489573
    22  24249603    24249760
    22  24250034    24250112
    ...

The output should look as follows.

    22  22488246    <coverage>
    22  22488247    <coverage>
    ...
    22  24249604    <coverage>
    ...


## Evaluation

Below are the criteria for evaluating the submission in the order of importance.

1. Correctness of the algorithm
2. Computational efficiency. The algorithm should be fast whether the input is
   composed of a few long intervals or many short intervals.
3. Programming style and best practices


## Example data

An example BAM file is provided at
`NA12878.mapped.ILLUMINA.bwa.CEU.low_coverage.20121211.chr21-22.bam`. This is a
small sample from a 1KGP individual. An example input BED file is available at
`test_input.bed`.


## Tips

Feel free to use the provided Gitpod environment for running your code in a
Linux environment. Files can be downloaded from/uploaded to Gitpod.

The Gitpod environment has been pre-installed with Conda to to allow the
installation of custom packages, for instance by `conda install pandas`.
For details, see
https://docs.anaconda.com/anaconda/user-guide/tasks/install-packages/.

Everytime a Gitpod workspace is stopped and restarted, the environment is
built from scratch. To configure package installation steps at workspace
startup, add lines `conda install pandas` in file .gitpod.yaml in section
`tasks[1].before`.
