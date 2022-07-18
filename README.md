# Serum interview coding task

Write an algorithm (a function or a command line script) that computes the
per-base coverage of given genomic intervals.

Perform counting with the following constraints.

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

1. Correctness
2. Computational efficiency
3. Programming style and best practices

