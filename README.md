# seqhandbook

## an R package to complement the handbook on sequence analysis

It provides the datasets used in the examples in the handbook,

as well as functions for :

* describing episodes in individual sequences (at least one episode, number of episodes, position of the start of the first episode)
* measuring association between domains in multidimensional sequence analysis
* heat maps of sequence data
* Globally Interdependent Multidimensional Sequence Analysis (GIMSA)
* smoothing sequences for index plots
* coding sequences for Qualitative Harmonic Analysis
* measuring stress from MDS factors
* symmetrical PLS


## installation

Execute the following code within `R`:

``` r
if (!require(devtools)){
    install.packages('devtools')
    library(devtools)
}
install_github("nicolas-robette/seqhandbook")
```

## References

