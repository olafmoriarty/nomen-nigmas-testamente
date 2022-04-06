=== theodors_kontor
BLANK #location:theodorskontor #style:narrative #person:
{not first:
    ->first
}
<-villa_delte(->theodors_kontor)
+ {not trykk_paa_maleriet} [Sjå på maleriet]
->maleriet

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
Nittitalet? Var han ikkje allereie styrtrik på det tidspunktet? #person:meg
Jo. Men kvar gong han kjøpte ei ny bedrift, forsøkte han å jobbe der i nokre månader. Han sa at det var den beste måten å lære korleis eit selskap faktisk fungerte. #person:astrid
Huh. Han må ha opplevd mykje interessant på den måten. #person:meg
Han elska å fortelja historier. Og han snakka mykje om den apa der. Eg trur det var difor han hadde det maleriet, for å ha ei unnskyldning for å bringe opp den historia til folk. #person:astrid
Ho var visst døv. Apa, altså.
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