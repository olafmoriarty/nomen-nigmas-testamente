=== theodors_kontor
BLANK #location:theodorskontor #style:narrative #person:
{not first:
    ->first
}
{kjeller.wenche and flags !? harRingtPolitiet:
    ... eg har ringt politiet. Dei sa dei skulle kome så fort dei kunne. #style:dialog #person:astrid
    Det burde gi oss tid til å fullføre siste steg i rebusløpet ... #style:narrative #person:
    ~ flags += harRingtPolitiet
}

<-villa_delte(->theodors_kontor)
+ {not trykk_paa_maleriet} [Sjå på maleriet]
->maleriet
+ [Sjå på PC-en]
->pc
+ {flags !? harOpnaPengeskapet} [Sjå på pengeskapet]
->pengeskapet
+ {flags ? harOpnaPengeskapet} [Gå ned i kjelleren]
->kjeller

= first
Heimekontoret til Theodor Krankelfnaas var større enn husværet mitt. Midt i rommet stod det eit stort skrivebord. Å kome inn til det verka nesten litt intimiderande, og eg tvilte på at det var tilfeldig.
I eit hjørne av rommet, på eit mindre bord, stod det ein gamal stasjonær PC, med skjerm, tastatur og ein skrivar kobla til. Sannsynlegvis ikkje den Krankelfnaas nytta i det daglege, han såg ut til å vera av ein eldre årgang.
Over hjørnebordet hang maleriet eg gjenkjente frå Astrid Isabellas fotografi. Ja, det var utvilsamt eit maleri av Theodor Krankelfnaas med ei ape. Kva i alle dagar?
På ein av veggane i rommet var det eit pengeskap montert i veggen. Absolutt av interesse, men eg var ganske sikker på at eg ikkje hadde kombinasjonen som var nødvendig for å opne det.
->theodors_kontor

= maleriet
{flags ? veitAtApaErDov:
    Eit maleri av Theodor Krankelfnaas frå då han var dyrepassar. På fanget har han ei døv ape. #style:narrative
    Hadde Uno Martinsen vore interessert i dette maleriet? Eller var han berre ein ekling som dekorerte veggane sine med bilder av tilfeldige tenåringar han hadde funne på Instagram?
    {puzzle2:
        ->trykk_paa_maleriet
    }
    ->theodors_kontor
}
Kva er greia med dette maleriet, eigentleg? Kvifor sit bestefaren din saman med ei ape? Er han på safari? Hadde han ho som kjæledyr? #style:dialog #person:meg
Han jobba tre månader i ein dyrehage på nittitalet. Han blei visst veldig gode vener med den apa. #person:astrid
Ho var visst døv. Apa, altså. Ho trengte litt ekstra oppfølging, og bestefar meldte seg frivillig til å passe litt ekstra på henne.
Nittitalet? Var han ikkje allereie styrtrik på det tidspunktet? #person:meg
Jo. Men kvar gong han kjøpte ei ny bedrift, forsøkte han å jobbe der i nokre månader. Han sa at det var den beste måten å lære korleis eit selskap faktisk fungerte. #person:astrid
Huh. Han må ha opplevd mykje interessant på den måten. #person:meg
Han elska å fortelja historier. Og han snakka mykje om den apa der. Eg trur det var difor han hadde det maleriet, for å ha ei unnskyldning for å bringe opp den historia til folk. #person:astrid
~ flags += veitAtApaErDov
{puzzle2:
    ->trykk_paa_maleriet
}
Hmm ... Interessant. #person:meg
->theodors_kontor

= trykk_paa_maleriet
    ... #style:dialog #person:meg
    Vent. Det er svaret!
    På kva? #person:astrid
    Kikazaru! #person:meg
    Kva er det? #person:astrid
    Løysinga på oppgåva bestefaren din etterlot seg i Dagens Nyhende var Kikazaru. Kikazaru var ein av austens tre vise aper. Nærare bestemt ... #person:meg
    "Hear no evil".
    Det må vera ei referanse til dette maleriet! #person:astrid
    Eg lot fingeren gli over maleriet. Det var nesten ikkje merkbart, men lerretet var ikkje heilt flatt. Der apa var malt, var det utan tvil ein slags knapp. #style:narrative
    Kor lenge har dette maleriet hengt her? #style:dialog #person:meg
    Så lenge eg kan hugsa. Det er bolta fast i veggen, så det er inga enkel sak å ta det ned. #person:astrid
    Så om eg trykker her ... #person:meg
    \*whirr\* #style:narrative 
    Skrivaren som stod på hjørnebordet vakna til liv, og printa sakte ut eit papirark. Astrid Isabella plukka det opp, leste raskt gjennom det og gav det til meg. Ho såg veldig fornøgd ut.
    ~ inv += apeark
    Godt jobba. Dette er DEFINITIVT neste gåte. #style:dialog #person:astrid
    Vi var eitt steg nærare ... men dette gjorde meg berre enno meir nysgjerrig på kvifor ein gravejournalist hadde hatt eit fotografi av dette maleriet. Var han òg på sporet etter formuen til Krankelfnaas? #style:narrative
->theodors_kontor

= pengeskapet
På ein av veggene i kontoret var det eit pengeskap. Den gamle typen, med kombinasjonslås. Eg hadde sett sånne berre i Olsenbanden, og eg hadde verken stetoskop eller dynamitt.
{puzzle6:
    Trur du kombinasjonen kan vera ... Fibonacci-sekvensen? #person:astrid #style:dialog
    Det er berre ein måte å finne ut det på. #person:meg
    Eg la handa på dreiedingsen og lot den sakte gli fram og tilbake ... 1 ... 1 ... 2 ... 3 ... 5 ... 8 ... 13 ... 21 ... #style:narrative
    \*klikk\*
    {flags ? harHoyrdOmDaVinci: Du tulla ikkje da du sa at bestefaren din likte Da Vinci-koden.|Det var koden ...} #person:meg #style:dialog
    \*rumlerumlerumle\* #style:narrative
    ... kva skjer? #person:meg #style:dialog
    Heile veggen ... beveger på seg! #person:astrid
    \*RUMLERUMLERUMLE\* #style:narrative
    Veggen bak pengeskapet glei sakte til side. Dette var ikkje eit pengeskap! Det var ei opningsmekanisme til ei hemmeleg dør! #style:narrative
    Ei ... trapp? Så vi skal ned i kjelleren? #style:dialog #person:meg
    Kva? Eg visste ikkje at det var ein kjeller her! #person:astrid
    Kva er det du har funne på, bestefar ... #person:astrid
    ~ flags += harOpnaPengeskapet
- else:
    Det hadde vore heilt perfekt om pengeskapet var ein del av rebusløpet ... #person:astrid #style:dialog
    Bestefaren din snakka aldri om kva kombinasjonen til pengeskapet var? #person:meg
    Kvifor skulle han gjera det? #person:astrid
    Anten er dette berre ei raud sild ... Ellers må vi finne meir informasjon ein annan stad før vi går vidare her. #person:meg
}
->theodors_kontor

= pc
PC-en som stod i eit hjørne av rommet var gamal og støvete. Han såg ikkje ut som om han hadde vore brukt på ei stund. Eg trykka på På-knappen likevel.
Eg trur det berre er affeksjonsverdi som har gjort at bestefar har tatt vare på den PC-en der. Han kjøpte den då eg var fire. Eg er imponert over at den framleis virker. #style:dialog #person:astrid
{kjeller.wenche:
    For å starte PC-en må ein taste inn eit passord ... {trur du det kan vera ...|} #person:meg
    Eg tasta raskt inn "Ensjø" på tastaturet og trykka på Enter. Skjermen blinka raskt grønt, passordfeltet forsvann, og blei erstatta av eit rutenett fullt av bokstavar, med eit nytt passordfelt under rutenettet. #style:narrative
    Bingo. #style:dialog #person:meg
    Er det ... #person:astrid
    Åttande gåte. Og siste, trur eg. #person:meg
    Kva venter vi på? #person:astrid
    MINIGAME #minigame:puzzle8
    {puzzle8:
        ->epilog
    - else:
        Hmm ... Denne var vrien ... #person:meg
        Trenger du ein pause før du prøver igjen? #person:astrid
        Eg må berre tenkja meg litt om. Dette klarer vi. #person:meg
    }
}
Det ser ut som om den krever at ein tastar inn eit passord ... Nokre tankar om kva det kan vera? #person:meg
Nei. Han delte aldri sånt med andre. Ikkje med Wenche eingong. #person:astrid
Ok ... Då får vi ikkje brukt denne til noko akkurat no. #person:meg
Eg slo PC-en av igjen. #style:narrative
->theodors_kontor