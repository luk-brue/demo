
<!-- README.md is generated from README.Rmd. Please edit that file -->

# demo

Ein Paket mit eingebautem Datensatz und interaktivem Tutorial.  
Die Daten stammen vom statistischen Bundesamt.

## Installation

Führen Sie diesen Code in der R-Konsole aus, um das Paket zu
installieren.

``` r
# install.packages("devtools")
devtools::install_github("blettr/demo")
```

## Tutorial

Führen Sie das interaktive Tutorial wie folgt aus:  
Installieren Sie vorher, falls noch nicht vorhanden, die Pakete `learnr`
und `tidyverse`, da diese im Tutorial genutzt werden.

Ein Browserfenster mit dem Tutorial sollte sich öffnen.

``` r
library(demo)
#install.packages("learnr")
#install.packages("tidyverse")
learnr::run_tutorial("demo", "demo")
```
