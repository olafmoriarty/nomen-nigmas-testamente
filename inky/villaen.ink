=== villaen
BLANK #location:villaen #person:
{not first:
->first
}
{avisa.redaktoren_first and flags !? settTwistVedVillaen:
    ... #person:twist #style:dialog
    På veg til døra blei eg møtt av ein mann som gjekk i motsatt retning. Det var noko kjent med han, som om eg hadde sett han tidlegare. #person: #style:narrative
    ~ flags += settTwistVedVillaen 
}
+ {not kvifor_avhor} [Eg ringte på døra.] -> butler
+ {kvifor_avhor and flags !? harAstridsTillit} [Eg ringte på døra.]
    Ja? ... Åh, det er deg igjen. #person:astrid #style:dialog
    ++ [Eg veit kvifor politiet var her.]
        -> kvifor_avhor
    ** Kvar blei det av butleren din? #person:meg
        Knut? Han er ferdig for dagen og har gått heim. #person:astrid
        Var det noko meir du ville snakke med han om?
        Nei, ikkje eigentleg, eg var vel berre nysgjerrig. #person:meg
        *** [Eg veit kvifor politiet var her.]
            -> kvifor_avhor
        *** Det var alt eg ville spørja om. #person:meg
        Ringte du på berre for å ... Du er litt snål, veit du det? #person:astrid
        ->villaen
    ++ Eh, nei, det var ingenting. #person:meg
        ... Neste gong du tulleringer på døra til nokon, hugs å løpe før dei opner. #person:astrid
        ->villaen
    -> butler
+ {flags ? harAstridsTillit} [Spør Astrid Isabella om ...] ->snakkMedAstrid
+ [Eg bestemte meg for å dra til ...] ->map
+ [I lommene mine hadde eg ...] ->inventory->villaen

= first
Å kome av t-banen og spasere dei få hundre meterne opp til Slott Krankelfnaas var som å passere gjennom ein portal til ei anna røynd, ei verd eg primært kjente frå Trond Kirkvaag-sketsjar eller britiske TV-seriar med høge kostymebudsjett.
Villaen til Krankelfnaas var gigantisk. Det var ein ruvande, overdådig murbygning som likna meir på eit slott enn på ein bolig. Berre på denne sida av huset talde eg tjue store vindauge, fordelt på to etasjar.
Frå oppkjørselen såg eg òg ein fantastisk, mangfoldig hage som omringa huset. Store metallgjerde hindra meg frå å kome meg til hagen, men eg hadde uansett ingenting der å gjera.

->villaen

= butler
Eg gjekk fram til den majestetiske døra og la fingeren på dørklokka. Ganske snart opna døra seg, og ein høg figur i dyr dress stod på den andre sida av dørstokken og såg ned på meg. #style:narrative
God dag. Korleis kan eg hjelpe deg? #style:dialog #person:butler
+ [Er Wenche Krankelfnaas  {her|tilbake}?]
    Er Wenche Krankelfnaas {her|tilbake}? #person:meg
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
    {inv ? oppgaveark:
        ... #person:butler
        Frøken Astrid Isabella Krankelfnaas blei nettopp ledig, kanskje ho kan hjelpe deg? #person:butler
        Kven? #person:meg
        Avdøde herr Krankelfnaas' barnebarn. Ho kom til Oslo i natt for å hjelpe til med å rydde i buet. #person:butler
        Eg trenger berre å gi frå meg ein konvolutt. Eg kan godt snakke med henne. #person:meg
        Eit augeblikk. #person:butler
        ->astrid_first
    }
    Eg kjem tilbake seinare. #person:meg
    Gjer det. #person:butler
    Den vennlege kjempa lukka døra igjen, og eg såg ingen annan utveg enn å kome tilbake hit seinare. #person: #style:narrative
- ->villaen

= astrid_first
Ja? Kven er du? #style:dialog #person:astrid
Hei. Eg heiter {playerName}. Eg fekk besøk av di ... av Wenche Krankelfnaas i dag, og ho gløymde dette testamentet på kontoret mitt? #person:meg
Åh. Typisk Wenche. #person:astrid
Eg skal gi det til henne. Takk for at du kom innom.
~ inv -= testamente
Og med det var mi rolle i narrativet over. Eg kunne gå tilbake til kontoret, sprette ei pakke kolibristenger og stirre på døra i håp om at ein ny kunde skulle spasere inn. #style:narrative
Eller ...
... nei. Eg måtte sjå korleis denne historia utspelte seg vidare.
Kunne eg få lov til å stille deg eit par spørsmål? Om bestefaren din, og ... #person:meg #style:dialog
Ugh, nei! Eg har svart på spørsmål den siste timen, eg orkar ikkje ... #person:astrid
... sorry. Eg er i litt dårleg humør. Eg kom med nattoget frå Bergen i natt, så eg har ikkje sove så godt, og eg har ikkje fått kvilt i dag fordi eg plutseleg fekk besøk av politiet.
Politiet? #person:meg
Dei leitar etter ein sakna person, og av ein eller annan grunn trur dei at eg kjenner han. Eg har aldri sett eller høyrd om fyren før. #person:astrid
Hadde eg ikkje høyrd om noko slikt for ikkje så lenge sidan? #style:narrative
->kvifor_avhor

= kvifor_avhor
Eg trur kanskje eg veit kvifor politiet ville snakke med deg om {flags ? veitOmUno: Uno Martinsen|denne personen}. #style:dialog #person:meg
Javel? #person:astrid
+ Dei trur at han var i familie med deg. #person:meg
    Han var ikkje det. #person:astrid
    Er du heilt sikker? #person:meg
    Han står ikkje på stamtreet, for å seie det sånn. Du meiner om eg har ein hemmeleg fetter eg aldri har høyrd om? #person:astrid
    Eg veit ikkje. Kan bestefaren din ha hatt born utanfor ekteskap? #person:meg
    Han hadde det, faktisk. Det eg er skeptisk til er at han skulle ha haldt det hemmeleg for oss. Det liknar ikkje bestefar. #person:astrid
    Eller har du bevis på at denne personen var i familie med oss?
    ++ Nei ... #person:meg
+ Dei trur at han var kjærasten din. #person:meg
    ... æsj? #person:astrid
    Eg googla han etter at politiet var her. Han er femten år eldre enn meg, og twitterfeeden hans har uansett fleire raude flagg enn eit albansk 28. november-tog.
    Han var IKKJE kjærasten min.
    Nei, nei! Eg sa ikkje at han var det! Eg sa at politiet TRUDDE at han var det! #person:meg
    Kvifor? Kan du gi meg ein god grunn til at politiet skulle tru noko sånt? #person:astrid
    ++ {flags ? veitOmApebildet} [Biletet over pulten hans.]
        Du er heilt sikker på at du ikkje kjenner Uno Martinsen? #person:meg
        Eg er bombesikker! #person:astrid
        Så kvifor har han eit bilete av deg hengande over skrivebordet sitt? #person:meg
        ... hæ? #person:astrid
        Eg fann fram mobilen og viste henne biletet eg hadde tatt. #style:narrative
        Det er deg, er det ikkje? #style:dialog #person:meg
        Jo ... Men kvar har han ... #person:astrid
        Vent! Eg kjenner igjen det biletet! Det er eit bilete eg lasta opp på Instagram i fjor sommer!
        Ho trakk fram sin eigen telefon, og skrolla febrilsk tilbake i eit halvt minutt før ho haldt telefonen fram for meg og viste meg eit selfie ho hadde tatt. Det var utvilsamt same fotografi, og no kunne eg sjå fleire av detaljane på det. #style:narrative
        Det var eit bilete av Astrid Isabella som smilte til kameraet. Ho hadde på seg ein raud- og kvitstripete topp og ein svart bøttehatt, og ho hadde eit lite anheng i eit kjede rundt halsen. Biletet var tatt innandørs, i eit rom med dyre tapetar, og bak henne hang det eit stort maleri av ein eldre mann og ... ei ape?
        Det forklarer definitivt kvifor politiet kom hit, men ... det gir ikkje meining. Kvifor skulle denne journalisten printe ut eit fotografi av meg, og henge det på arbeidsplassen sin? #style:dialog #person:astrid
        Hmm ... #person:meg
        Vel, ein avtale er ein avtale. Spør meg om kva du vil. #person:astrid
        ~ flags += harAstridsTillit
        ->villaen
    ++ Nei ... #person:meg
+ Dei trur at han budde i dette nabolaget. #person:meg
    Han var ikkje heilt typen til det, trur eg. #person:astrid
    Politiet sa at han var ein ung journalist. Du kjøper ikkje bolig her i strøket på journalistlønn, og 95 % av alle som bur her er godt over sytti. Så eg tviler.
    Eller har du bevis på at denne personen budde i dette nabolaget?
    ++ Nei ... #person:meg
- Så det er berre ei gjetning ... #person:astrid
Skaff meg eit handfast bevis på teorien din, så skal eg vera villig til å tru på han. Gjer du det, skal eg svare på spørsmåla dine. Ok?
+ [Gjett noko anna]
->kvifor_avhor
+ OK.[] Eg kjem tilbake om eg finner noko konkret å vise deg. #person:meg
->villaen

= snakkMedAstrid
Bleep bloop. Denne delen av historia har ikkje blitt koda enno. Difor sluttar historia her for augeblikket. Eg skriver resten ferdig før helga. Bleep bloop.#style:narrative
->villaen