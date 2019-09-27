---
title       : Maskinoversettelse og fiksjon 
subtitle    : En blikk på automatisk oversettelse av litteratur
author      : Lars Bungum
job         : 
framework   : revealjs      # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : github      # github, zenburn
revealjs:
  theme: night
  transition: default
  center: "true"
bootstrap:
  theme: amelia
widgets     : [mathjax]            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Introduksjon

---
## Innhold

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>

> 1.  Motivasjon
> 2.  Hva er maskinoversettelse?
> 3.  Historisk oversikt
> 4.  Hvordan fungerer maskinoversettelse?
> 5.  Kjente problemområder 
> 6.  Forskell på fiksjon og faksjon; datalingivstens perspektiv
> 7.  Utvalgte arbeider på maskinoversettelse av litteraur


<script>
$('ol.incremental li').addClass('fragment')//note to anyone reading this code, you may need to change to ul from ol depending on ordered vs unordered list
</script>

--- &vertical
## Motivasjon


***
### "Computational Linguistics" er tidsriktig tverrfaglig

<img src=assets/img/NLP_and_cogsci_black.png style="width: 550px">

***
### Hvorfor bedrive maskinoversettelse?

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>

>* AI-komplett problem
>* Del av store forskningsspørsmål som:
     * Hva er språk?
     * Hvordan behandler hjernen språk?
     * Hvordan representere språk?
     * Er kunstig intelligens mulig?
     * Hvordan skrive effektive/brukervennlige programmer?
     
<script>
$('ul.incremental li').addClass('fragment')//note to anyone reading this code, you may need to change to ul from ol depending on ordered vs unordered list
</script>


--- &vertical
     
## Maskinoversettelse definert

***

### Garvin (1956):

“The transference of meaning from one patterned set of
symbols occurring in a given culture ... into another set of
patterned symbols in another culture.”

***
### Bente Mægård (1999):

Any use of computers in going from one language to another

--- &vertical

## FA HQ GP MT

***
### Restriksjoner  - FAHQ(GP)MT

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>

> * Fully-Automated
> * High-Quality
> * General Purpose 
> * Machine Translation

<script>
$('ul.incremental li').addClass('fragment')//note to anyone reading this code, you may need to change to ul from ol depending on ordered vs unordered list
</script>

***

### <red>FA</red> - Helautomatisert

<iframe width="800" height="450" src="https://www.youtube.com/embed/EaeSKUV2zp0" frameborder="0" allowfullscreen></iframe>

***
### HQ - Høykvalitet

<img src=assets/img/seal-893797_1280.png style="width: 550px">


***
### GP - Generelt formål

<img src=assets/img/text-types-genres_539815373911d_w1500.png style="width: 750px">

<span class="footnote">Source: [visual.ly](https://visual.ly?utm_source=content-embed&utm_medium=embed)</span>


***
### Er FAHQ(GP)MT mulig?

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>

> * Bar-Hillel (1960): nei
> * Martin Kay (1980): nei, men "translator's amanuensis"
> * Melby (1980): nei, men mulig for spesifikke domener

<script>
$('ul.incremental li').addClass('fragment')//note to anyone reading this code, you may need to change to ul from ol depending on ordered vs unordered list
</script>

***

<img src=https://miro.medium.com/max/1410/1*w-Pc6z7g1v1DhNGSQ3ilkw.png style="width: 750px">

Source: Wikicommons.

--- &vertical
## Historie

***

<iframe width="828" height="736" frameborder="0" scrolling="yes" src="http://plot.ly/~larsbun/5.embed"></iframe>

***

<img src=assets/img/papervis.jpg style="width: 750px">

--- &vertical
## Hovedtyper av maskinoversettelse

***

### Regelbasert

<img src=assets/img/Direct_translation_and_transfer_translation_pyramid.svg style="width: 750px">

***

### Eksempel-basert maskinoversettelse

> * Matching 
> * Alignment (samstilling)
> * Recombination (kombinasjon)

***

<a href="https://www.researchgate.net/figure/Example-based-Machine-Translation_fig3_320730405"><img src="https://www.researchgate.net/profile/Muhammad_Irfan174/publication/320730405/figure/fig3/AS:555488848904192@1509450270070/Example-based-Machine-Translation.png" alt="Example-based Machine Translation"/></a>

(Mohammad Irfan, 2017)

***


### Statistisk maskinoversettelse

<img src=assets/img/smtoverview.svg style="width: 750px">

*** 

### Nevrale Nettverk

<img src=assets/img/nnill.png style="width: 750px">


***
### Nevral maskinoversettelse (NMT)

<video controls> 
  <source src=assets/vid/seq2seq_3.mp4 type=video/mp4>
 /video>

--- &vertical

## Evaluering av maskinoversettelse

> * Har vært meget kontroversielt blant forskere.
> * Hva korrelerer best med menneskelig evaluering?
> * BLEU (Papinieni et al., 2002) er et toneangivende system.

*** 

<img src=assets/img/bleu.png style="width: 750px">

***

## Alternativer til BLEU

> * METEOR (Denkowski og Lavie, 2011, 2015) - tar syntaks og omskrivninger med i betraktning.
> * NIST (Doddington, 2002) - mindre frekvente n-gram tilskrives høyere vekt.
> * Word Error Rate (ordfeilrate).
> * Translation Edit Rate (endringsrate - hvor mange redigering er nødvendig for å få riktig setning).
> * Manuell evaluering.

--- &vertical


## Kjente problemer for maskinoversettelse

***
### Anafora

>* Hvis babyen ikke trives med råmelken, kok den (Ruslan Mitkov, 2014).
>* Myndighetene ville ikke gi demonstrantene tillatelse fordi de fryktet vold.
>* Forfattaren greia ut om boka.  Veka etter las eg henne.

>* Se, e.g., Suthanker, et al. (2018).

***

### Ordvalg i målspråk (leksikale valg)

>* The temperature rose.
>* The temperature fell.
>* Kalles "Word Sense Disambiguation", finnes veldig mye arbeid på dette.  (Par og Saha, 2015).


***
### Syntaktisk flertydighet

>* Jeg så mannen med kikkerten under broen ved soveposen i transen.

***
### Semantisk flertydighet

>* Det er tanken som teller.

***

### Pragmatisk flertydighet

>* Her var det kaldt!

***

### Kollokasjoner  

>* Følge regelverk.
>* Stille til ansvar.
>* Se. e.g, Seretan (2011).

***

### Metaforer

> * News travels fast.

> * En kjent metode for er å lage parafraser og bruke dem i maskinoversettelse (Shutova, 2010),

***

### Idiomer

>* Han har ikke gjort en flue fortred.
>* "Ikke øl i en sådan stund, rekk meg Løiten" (Nils Arne Eggen, 1996).

--- &vertical
## Strukturelle forskjeller på fiksjon og faksjon

> * Fordi litteratur er ordets kunst er oppgaven per definisjon den vanskligste (Chapman   1973).
> * Jonathan Slocum (1985) avviste idéen.  Relativt lite har vært gjort.
> * Korpuslingvistiske mål kan brukes, e.g. antall unike ord (n-gram), setningslengde, kollokasjoner.

***

### Referentiell binding (Referential Cohesion)

>* Setninger bindes sammen av meningsinnhold.  Samme referent gjentas flere ganger.

>* Litteratur har høyere grad av referentiell binding enn nyhetstekst (Voigt og Jurafsky, 2012)

***

<img src=assets/img/referentialcohesion.png style="width: 750px">

--- &vertical

## Arbeider på maskinversettelse av litteratur

***

### The (Un)faithful Machine Translator (Jones and Irvine, 2013)

>* Kvalitativ studie av oversettelse av litteratur (Camus, Bonnefoy).
>* SMT kan identifisere problemområder
>* Fri vs. trofast oversettelse / domestisert vs. fremmed

***

### Etter-redigering (post-editering)

> * Maskinoversettelse fulgt av post-editering av ikke-profesjonelle (Besacier and Schwartz, 2015). 
> * Lavere kvalitet, men kan være et alternativ for lavbudsjettoversettelse.

***

### Spesialtilpasset system for nære språk

> * I en oversettelse av Ruiz Zafón ble 20% av setningene helt like mellom maskinoversettelse (SMT) og profesjonelle helt like (Toral og Way, 2015).

***

### Translatørstudier (Toral et al. 2018)

>* Sammenlikning av SMT og NMT på oversettelse av 'Warbreaker' av Brandon Sanderson (1996) (CC).
>* Typer oversttelse: H1 ("from scratch"), MT1 (etterredigering av SMT), og MT2 (ereg. av NMT).
>* Kapittel 1 består av 3734 ord over 330 setninger.
>* Teksten delt opp i 33 oppgaver for hver oversetter, hvor disse kjenner faktorene, men hvem som gjør hva ble randomisert. Totalt 11 jobber for hver type.
>* Translatørverktøyet PET ble brukt til å registrere type, setningslengde, tid, tastetrykk, og pauser.

***

### Temporal dimensjon

>* RQ1: Tar oversettelse kortere tid ved etterredigering?
>* <img src=assets/img/temporal.jpg style="width: 750px">

***

### Teknisk dimensjon

>* RQ2: Fører etterredigering til færre tastetrykk?
>* <img src=assets/img/technical.jpg style="width: 750px">

***
### Kognitiv dimensjon

>* RQ3: Medfører etterredigering mindre kognitiv anstrengelse?
>* Målt med å telle pauser.  Ja, færre pauser per produserte ord.

--- &vertical

## Domain Adaptation

***

## Definisjon 

> * Å tilpasse et generelt maskinoversettelsesssytem til et spesifikt tekstdomene (ofte et emne, men kan også være stilistisk)

***

<img src=assets/img/damt.svg style="width: 750px">

--- &vertical
## Fremtiden?!

***

>* Post-editing
>* Enormt publikasjonstrykk
>* Ikke undervurder AI (AlphaGo, DeepMind, etc)
>* Behov for veldig mye oversettelse
>* Bruk det som et verktøy
>* Domain Adaptation

---

## Spørsmål?  Kommentarer?

---

### Referanser

* Chapman (1973): Linguistics and Literature
* Slocum (1985):  A Survey of Machine Translation: its   History,   Current   Status,   and Future
* Maegaard (1999): MLIM—Multilingual Information Management: Current Levels and Future Abilities
* Papinieni et al. (2002): BLEU: a Method for Automatic Evaluation of Machine Translation
* Voigt and Jurafsky (2012): Towards a Literary Machine Translation: The Role of Referential Cohesion
* Jones and Irvine (2012): The (Un)faithful Machine Translator 
* Besacier and Schwartz (2015): Automated translation of a literary work : a pilot study.
* Toral and Way (2015): Translating literary text between related languages using SMT.
* Toral et al. (2018): Post-editing Effort of a Novel With Statistical and Neural Machine Translation.

<!-- <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script> -->

<!-- Animated List -->
<!-- > 1. Abc -->
<!-- > 2. CDF -->
<!-- > 3. 33jsdf -->

<!-- <script> -->
<!-- $('ol.incremental li').addClass('fragment')//note to anyone reading this code, you may need to change to ul from ol depending on ordered vs unordered list -->
<!-- </script> -->

<!-- <br> -->

<!-- With a little bit of HTML, we can do all sorts of things. -->

<!-- --- -->
<!-- <ol> -->
<!-- <li class="fragment roll-in">roll-in</p> -->
<!-- <li class="fragment fade-in">fade-in</p> -->
<!-- <li class="fragment highlight-red">highlight-red</p> -->
<!-- <li class="fragment highlight-green">highlight-green</p> -->
<!-- <li class="fragment highlight-blue">highlight-blue</p> -->
<!-- </ol> -->

<!-- <div class="fragment grow">grow</div> -->
<!-- <div class="fragment shrink">shrink</div> -->

<!-- ---  -->
<!-- ## Incremental Reveal -->

<!-- <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script> -->

<!-- These points should be animated -->

<!-- > * Point 1 -->
<!-- > * .highlight-red Point 2 -->
<!-- > * .grow Point 3 -->

<!-- <script> -->
<!-- $('ul.incremental li').addClass('fragment')//note to anyone reading this code, you may need to change to ul from ol depending on ordered vs unordered list -->
<!-- </script> -->


<!-- --- -->

<!-- ## Fragmented Views -->

<!-- Hit the next arrow... -->

<!-- .fragment ... to step through ... -->

<!-- > * any type -->

<!-- .fragment of view -->


<!-- --- -->

<!-- ## Incremental Reveal -->

<!-- These points should be animated -->

<!-- > - Point 1 -->
<!-- > - .highlight-red Point 2 -->
<!-- > - .grow Point 3 -->
<!-- <script> -->
<!-- $('ul.incremental li').addClass('fragment') -->
<!-- </script> -->

