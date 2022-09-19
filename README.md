# Serum interview coding task

Write an algorithm that computes the mean read coverage, median read coverage
and "broadest peak" of a BAM file for a set of input genomic intervals.

A "peak" is a genomic interval from position $a$ to position $b$, composed of
base pair positions $(a, ..., p, ..., b)$ with corresponding coverages
$x_i, i \in {a, a + 1, ..., p, ..., b}$, such that $x_{i-1} \le x_i$ when
$i \le p$ and $x_i \ge x_{i + 1}$ when $i \ge p$, where $x_i$ is the coverage of
position $i$. The broadest peak is the peak that is the longest, i.e. that has
the greatest distance of $b - a$ above.

Note that a peak may include positions with zero coverage. For instance, in a region of the following coverage values, the broadest peak is of length 9.

2
**0
0
1
2
2
3
1
0
0**
1


Apply the following read and base filters when computing coverage.

* Only count uniquely mapped, properly paired reads
* Disregard secondary, supplementary, QC failed or duplicated reads
* Only count nucleotides with quality >= 10
* Deletions in reads with respect to the reference genome (i.e. bases in the reference but missing in a read) should not be counted towards coverage

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

The submission in evaluated using the criteria listed below in the order of
importance.

1. Correctness of the algorithm
2. Computational efficiency (note that genomic intervals can be as long as an
   entire chromosome)
3. Programming style and best practices


## Example data

An example BAM file is provided at
`NA12878.mapped.ILLUMINA.bwa.CEU.low_coverage.20121211.chr21-22.bam`. This is a
small sample from a 1KGP individual.

An example input BED file is available at
`test_input.bed`.


## Submitting the project

Please either submit your code via email to yilong@serumdetect.com or share your
Gitpod workspace with the code to be submitted.


## Tips

Feel free to use the provided Gitpod environment for running your code in a
Linux environment. Files can be downloaded from/uploaded to Gitpod.

The Gitpod environment has been pre-installed with the necessary software
packages required to solve the task. See a full list of installed packages at
file `conda-requirements.txt`.

If you need to install additional packages, feel free to do so using `conda
install <package1> <package2> ...`. Note that package installation needs to be
manually repeated everytime a workspace is stopped and restarted.
