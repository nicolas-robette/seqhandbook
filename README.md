# seqhandbook

## an R package to complement the handbook on sequence analysis

It provides the data used in the examples in the handbook.

It provides functions for :

* describing episodes in individual sequences
* measuring association between domains in multidimensional sequence analysis
* heat maps of sequence data
* Globally Interdependent Multidimensional Sequence Analysis (GIMSA)

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

