=== villaen
BLANK #location:villaen #person:
{not first:
->first
}
+ [Eg ringte på døra.] -> butler
+ [Eg bestemte meg for å dra til ...] ->map
+ [I lommene mine hadde eg ...] ->inventory->villaen

= first
Å kome av t-banen og spasere dei få hundre meterne opp til Slott Krankelfnaas var som å passere gjennom ein portal til ei anna røynd, ei verd eg primært kjente frå Trond Kirkvaag-sketsjar eller britiske TV-seriar med høge kostymebudsjett.
Villaen til Krankelfnaas var gigantisk. Det var ein ruvande, overdådig murbygning som likna meir på eit slott enn på ein bolig. Berre på denne sida av huset talde eg tjue store vindauge, fordelt på to etasjar.
Frå oppkjørselen såg eg òg ein fantastisk, mangfoldig hage som omringa huset. Store metallgjerde hindra meg frå å kome meg til hagen, men eg hadde uansett ingenting der å gjera.

->villaen

= butler
Eg gjekk fram til den majestetiske døra og la fingeren på dørklokka. Ganske snart opna døra seg, og ein høg figur i grå dress stod på den andre sida av dørstokken og såg ned på meg. #style:narrative
God dag. Korleis kan eg hjelpe deg? #style:dialog #person:butler
+ Er Wenche Krankelfnaas {her|tilbake}? #person:meg
    Nei, beklager. Ho er framleis ute. #person:butler
    Pokker. #person:meg
    {flags !? gittButlerenBrevet:
        Ho gløymde eit brev på kontoret mitt i dag, kan eg gi det til deg?
        Overhovudet ikkje. #person:butler
        Min stillingsinstruks omfattar å opne dører, ta imot besøkande, bestille kinobillettar, pusse sølvtøy og organisere snurrepiperi. Eg er ikkje eit postbod.
        Det følast som ein ... glipp? Når du først står her, kan eg ikkje berre gi denne til deg, og ... #person:meg
        Må eg ringe fagforeiningsrepresentanten min? #person:butler
        Uh, nei, beklager. #person:meg
        ~ flags += gittButlerenBrevet
    }
    Eg kjem tilbake seinare. #person:meg
    Gjer det. #person:butler
    Den vennlege kjempa lukka døra igjen, og eg såg ingen annan utveg enn å kome tilbake hit seinare. #person: #style:narrative
- ->villaen
->END