# seqhandbook

## Miscellaneous Tools for Sequence Analysis

This R package complements the handbook on sequence analysis "L'analyse statistique des trajectoires" (see references).

It provides the datasets used in the examples in the handbook, as well as functions for :

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

Robette, Nicolas. *L'analyse statistique des trajectoires : Typologies de séquences et autres approches*. Nouvelle édition [en ligne]. Paris : Ined Éditions, 2021. Disponible sur Internet : <https://books.openedition.org/ined/16670>. ISBN : 9782733290507. DOI : https://doi.org/10.4000/books.ined.16670.