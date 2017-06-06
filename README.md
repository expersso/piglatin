
Pig Latin
---------

This R package allows the user to translate an arbitrary text into [Pig Latin](https://en.wikipedia.org/wiki/Pig_Latin).

``` r
devtools::install_github("expersso/piglatin")
```

``` r
library(piglatin)
library(magrittr)

url("http://history.eserver.org/gettysburg-address.txt") %>%
  readLines() %>%
  .[4:26] %>%
  paste(collapse = "") %>%
  pigify() %>% 
  strwrap(60) %>%
  cat(sep = "\n")
```

    ## Ourfay orescay anday evensay earsyay agoay ouray athersfay
    ## oughtbray orthfay onay isthay ontinentcay aay ewnay
    ## ationnay, onceivedcay inay ibertylay anday edicatedday otay
    ## ethay opositionpray atthay allay enmay areay eatedcray
    ## equalay. Ownay eway areay engageday inay aay eatgray
    ## ivilcay arway, estingtay etherwhay atthay ationnay oray
    ## anyay ationnay osay onceivedcay anday osay edicatedday
    ## ancay onglay endureay. Eway areay etmay onay aay eatgray
    ## attlefieldbay ofay atthay arway. Eway avehay omecay otay
    ## edicateday aay ortionpay ofay atthay ieldfay asay aay
    ## inalfay estingray-aceplay orfay osethay owhay erehay avegay
    ## eirthay iveslay atthay atthay ationnay ightmay ivelay. Itay
    ## isay altogetheray ittingfay anday operpray atthay eway
    ## ouldshay oday isthay. Utbay inay aay argerlay ensesay, eway
    ## annotcay edicateday, eway annotcay onsecratecay, eway
    ## annotcay allowhay isthay oundgray. Ethay avebray enmay,
    ## ivinglay anday eadday owhay uggledstray erehay avehay
    ## onsecratedcay itay arfay aboveay ouray oorpay owerpay otay
    ## adday oray etractday. Ethay orldway illway ittlelay otenay
    ## ornay onglay ememberray atwhay eway aysay erehay, utbay
    ## itay ancay evernay orgetfay atwhay eythay idday erehay.
    ## Itay isay orfay usay ethay ivinglay atherray otay ebay
    ## edicatedday erehay otay ethay unfinisheday orkway ichwhay
    ## eythay owhay oughtfay erehay avehay usthay arfay osay
    ## oblynay advanceday. Itay isay atherray orfay usay otay ebay
    ## erehay edicatedday otay ethay eatgray asktay emainingray
    ## eforebay usay--atthay omfray esethay onoredhay eadday eway
    ## aketay increaseday evotionday otay atthay ausecay orfay
    ## ichwhay eythay avegay ethay astlay ullfay easuremay ofay
    ## evotionday--atthay eway erehay ighlyhay esolveray atthay
    ## esethay eadday allshay otnay avehay iedday inay ainvay,
    ## atthay isthay ationnay underay Odgay allshay avehay aay
    ## ewnay irthbay ofay eedomfray, anday atthay overnmentgay
    ## ofay ethay eoplepay, byay ethay eoplepay, orfay ethay
    ## eoplepay allshay otnay erishpay omfray ethay earthay.
