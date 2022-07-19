# Serum interview coding task

Write an algorithm that computes the mean read coverage, median read coverage
and "broadest peak" of a BAM file for a set of input genomic intervals.

A "peak" is a genomic interval $x_1, ..., x_p, ..., x_n$, such that
$x_{i-1} <= x_i$ when $i <= p$ and $x_i >= x{i + 1}$ when $i >= p$. The broadest
peak is the peak that is the longest, i.e. that has the largest possible $n$ above.

Apply the following read and base filters:

* Only count uniquely mapped, properly paired reads
* Disregard secondary, supplementary, QC failed or duplicated reads
* Only count nucleotides with quality >= 10
* Deletions with respect to the reference genome should be disregarded

For example, if the input BED file has the following contents:

    22  22488245    22489573
    22  24249603    24249760
    22  24250034    24250112
    ...

The output should look as follows.

    22  22488245    22489573    <mean_coverage> <median_coverage>   <length_of_broadest_peak>
    22  24249603    24249760    <mean_coverage> <median_coverage>   <length_of_broadest_peak>
    22  24250034    24250112    <mean_coverage> <median_coverage>   <length_of_broadest_peak>
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

The Gitpod environment has been pre-installed with the necessary packages
required to solve the task.

If you need to install additional packages, feel free to do so using `mamba
install <package1> <package2> ...`. Note that package installation needs to be
manually repeated everytime a workspace is started.
