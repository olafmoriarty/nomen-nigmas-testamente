=== kjeller
BLANK #location:kjelleren #style:narrative #person:
{not first:
    ->first
}
{puzzle7 and not wenche:
    ->wenche
}
<-villa_delte(->kjeller)
+ {not wenche} [Sjå på bordet]
    ->bordet
+ {not wenche} [Sjå på den store døra]
    ->dora
+ {wenche} [Sjå på Wenche]
    Wenche sat heilt fast i eit nett oppunder kjellertaket. Ho kom seg ingen stadar før politiet kom for å plukke henne ned. Eg pusta letta ut over å framleis vera i live.
- -> kjeller

= first
Vi gjekk forsiktig ned den bratte, mørke steintrappa. Då vi var omtrent halvvegs, må vi ha utløyst ein sensor, for eg såg at eit lys blei tent i rommet der nede. #style:narrative #location:trapp
Eg veit ikkje kva eg hadde forventa å finne ved botnen av trappa ... men det var definitivt ikkje dette.
K-kvar er vi? #location:kjelleren #style:dialog #person:meg
Dette ser ut som gamle katakomber, eller eit gamalt tempel, eller ...
Einig ... men det er ikkje mogleg. #person:astrid
Då eg var liten, pleide eg å leike i flaggermushulene under huset. Og eg er ganske sikker på at eg kjenner igjen nokre av desse veggane.
Så ... Muren, faklane, golva og alt det andre ... #person:meg
Maks fem år gamalt. #person:astrid
Vi gjekk innover. Heilt i enden av det lange rommet stod det eit bord, og midt på bordet stod det eit skrin. #style:narrative
Bak bordet, på den innerste veggen i rommet, var det noko som såg ut som ei dør. Den dekka nesten heile veggen, og hadde ei merkeleg mekanisme ved sidan av seg.
... #style:dialog #person:astrid
Kva er den lukta ...? #style:dialog #person:astrid
Eg er ikkje heilt sikker ... #person:meg
->kjeller

= dora
    Det såg ut som ei gigantisk hvelvdør som dekka nesten heile veggen.
    Midt på døra var det ei slags mekanisme. Mekanismen innehaldt fem store rullar som viste kvar sin bokstav, som ein større utgåve av ein krypteks eller ein koffertlås. Mekanismen viste for augeblikket kombinasjonen "AAAAA".
    Eg går ut frå at vi må finne eit ord på fem bokstavar for at døra skal opne seg? #style:dialog #person:astrid
    Det kan verke sånn. #person:meg
->kjeller

= bordet
Det store bordet verka litt malplassert i det som elles såg ut som ein katakombe. Dette var eit bord ein kunne ha funne i eit stort staseleg selskap, eit bryllup eller noko sånt. Den kolsvarte duken dekka heile bordet og hang heilt ned til golvet på alle sider.
    Det openbare trekkplasteret som auga automatisk gjekk rett til, var eit lite sølvskrin midt på bordet. {flags ? harSettSkrinet:Skrinet var opent, og anhenget til Astrid Isabella sat framleis i nøkkelholet.}
+ {flags !? harSettSkrinet} [Sjå på skrinet]
    -> skrinet
* [Sjå på duken]
    Skrinet midt på bordet var openbart det mest interessante her, men ... Det var noko merkeleg med resten av bordet òg.
    Den merkelege lukta Astrid Isabella hadde lagt merke til, var sterkare her. Det kunne ikkje vera ... blod? Eg måtte berre løfte duken for å sjekke om det var noko der.
    Aah! Det er ... #style:dialog #person:meg
    Det var ikkje synleg mot det svarte stoffet, men den nederste delen av duken var gjennomsyra av blod. Og under bordet ... lå det ein død mann med ein kniv i brystet. #style:narrative
    Kva ... kvifor ... kven er dette? #person:meg #style:dialog
    Astrid Isabella såg ut som om ho skulle til å kaste opp. Eg følte for noko liknande sjølv. #style:narrative
    Eg  ... veit ikkje kvifor, men eg har sett nok bilete av den mannen i ettermiddag til å vite kven det er. Dette ... er Uno Martinsen.  #style:dialog #person:astrid
    Men ... kva gjer han her? Og kven skulle ha lyst til å drepe han? #person:meg
    Meg, så klart. #person:???
    ->wenche
+ ->kjeller
- ->kjeller

= skrinet
    Hmm ... Det ser ut som om det er låst. Eg klarer ikkje å opne det. #style:dialog #person:meg
    Så vi må finne ein nøkkel? #person:astrid
    Ikkje ein vanleg nøkkel iallfall. Dette nøkkelholet er ... lilla, og ... Hjarteforma? #person:meg
    ... lilla ... hjarte ... #person:astrid
    Kva? #person:meg
    Vi trenger ikkje å leite etter ein nøkkel ... Vi har han allereie! #person:astrid
    Kva meiner du? #person:meg
    "Når du kjem til porten, vis han at du er ein Krankelfnaas". #person:astrid
    Ho stakk handa ned i genserhalsen, og fiska opp eit lite anheng med eit ametysthjarte. Eg hugsa at eg hadde sett det same anhenget på Instagram-biletet hennes. #style:narrative
    Mamma, alle onklane og tantane mine, alle syskenborna mine ... Bestefar gav desse til oss alle! Og så sa han noko kryptisk om at vi kanskje ein dag ville møte ei utfordring der vi ville trenge det for å kome vidare. #style:dialog #person:astrid
    Du trur det passer i nøkkelholet? #person:meg
    Det er berre ein måte å finne det ut på ... #person:astrid
    \*klikk\* #style:narrative
    Bingo. Det opna seg. Og det inneheld ei ny oppgåve. #style:dialog #person:astrid
    Ho såg raskt over det nye oppgåvearket før ho gav det vidare til meg. #style:narrative
    ~ flags += harSettSkrinet
    ~ inv += skrinark
->kjeller

= wenche
{puzzle7:
    Imponerande løyst. Så kva er dørkombinasjonen? #style:dialog #person:???
    ... kven sa det? #person:meg
}
Eg snudde meg raskt. Bak oss, i døropninga, stod ein person med eit skytevåpen i handa, retta mot oss. Det var ... #style:narrative
Wenche Krankelfnaas. #person:wenche
Du skuffer meg, Astrid Isabella. Har du gått i kompaniskap med denne kjeltringen? #style:dialog
{playerPronounCap} er ingen kjeltring! Eller ... er du det? #person:astrid
Nei! #person:meg
Du stjal testamentet mitt, gjorde du ikkje? #person:wenche
Eg har brukt halve dagen på å prøve å få levert det tilbake til deg! #person:meg
{puzzle7:
    Uh ... {playerName}? #person:astrid
    Astrid Isabella peika ned mot golvet. Det kom ein bloddam ut frå under den svarte duken. #style:narrative
    Ho løfta raskt på duken, og vi såg ... ein død mann med ein kniv i brystet.
    Det ... det er Uno Martinsen. #style:dialog #person:astrid
}
Var det du som drepte Martinsen? Kvifor? #person:meg
Han dukka opp på døra her for nokre dagar sidan, og presenterte seg som ein journalist i Dagens Nyhende. #person:wenche
Han sa at avisa hans hadde ein anonym oppgåveskapar som dei kalte Nomen Nigma, og at fleire ting hadde fått han til å lure på om denne personen kunne ha vore min Theodor.
Dessutan hadde han sett ei oppgåve Nigma hadde levert til avisa for trykking i tilfelle han forsvann ... Og dersom Teddy var Nigma, lurte han på om denne kanskje kunne vera første steg i ein skattejakt.
Eg hadde ikkje sett testamentet enno då, men det verka veldig som ein ting Teddy kunne gjera. Så eg slapp han inn, og viste han apemaleriet.
Det var ikkje den mest behagelege personen eg har vore borti akkurat ... men han var rå på å løyse gåter. Så han jobba seg gjennom dei, ei oppgåve om gongen, til vi kom hit.
Det er openbart at formuen ligger bak den døra, og at sølvskrinet inneheld passordet ... men vi klarte ikkje å opne skrinet.
{flags ? harSettSkrinet:
    Fordi du ikkje hadde eit ametysthjarte? #person:astrid
    Ti år har eg gitt til den mannen. Ti år. Og likevel stolte han aldri nok på meg til å gi meg den same nøkkelen han hadde gitt resten av familien. Eg blei aldri god nok for han. #person:wenche
}
Eg bad Martinsen om å vente ei veke eller to, og sa at eg kunne finne ein måte å låse det opp på. Men han var utålmodig. Han sa at han hadde sett nok til å skrive ei sak om dette no ... Ei nyhendesak om at Theodor Krankelfnaas var ein rebuskonstruktør som hadde gøymd bort store delar av formuen sin i ei katakombe under huset sitt.
Eg har venta på den arven i TI ÅR. Hadde eg latt han skrive den artikkelen, hadde han vore tapt for meg for alltid. Då ville han ha blitt tatt av eit av borna eller barneborna hans, og eg hadde endt med ingenting.
Eg kunne ikkje la det skje.
Så du drepte han!? Og gøymde han bort under eit bord? #person:meg
Butleren kunne kome tilbake frå lunsjpausen sin når som helst. Så eg lot han vera igjen her, sette alle spor tilbake dit eg fann dei, og venta. Eg visste at når testamentet var lest opp, kunne eg finne ein detektiv som kunne hjelpe meg å få kloa i ein nøkkel. #person:wenche
{flags !? harSettSkrinet:
    Du har allereie skjønt det ... har du ikkje, Astrid Isabella?
    Korleis ein opner skrinet? Ja ... #person:astrid
    Ho trakk eit lite anheng med eit ametysthjarte opp frå genserhalsen, og sette det i nøkkelholet på det vesle skrinet. #style:narrative
    "Når du kjem til porten, vis han at du er ein Krankelfnaas" ... Bestefar gav desse til alle i familien for lenge sidan. #style:dialog
    Ti år har eg gitt til den mannen. Og likevel stolte han aldri nok på meg til å gi meg den nøkkelen. Eg blei aldri god nok for han. #person:wenche
    Astrid Isabella opna skrinet og trakk ut eit papirark, som ho gav til meg. Eg kasta eit raskt blikk på det. Ja, dette var ei ny oppgåve. #style:narrative
    ~ inv += skrinark
    ~ flags += harSettSkrinet
}
Nok prat. Kva er løysinga på den oppgåva? #style:dialog #person:wenche
{puzzle7 == 0:
    Kva? Vi har ikkje løyst ho enno! #person:astrid
    Gjer det, då. Eg har verken intensjonar om eller forutsetningar for å klare det på eiga hand. #person:wenche
}
Kvifor skal vi {puzzle7:seie det til|hjelpe} deg? Du kjem til å drepe oss uansett! #person:meg
Eg er ikkje urimelig, {playerName}. Dreper eg dykk her er det temmeleg openbart at det er eg som står bak, og då må eg uansett bytte identitet og flykte landet. #person:wenche
Gi meg løysinga på den oppgåva, så kan eg la dykk leve. Nekt, og eg er villig til å drepe ein av dykk for å få den andre til å samarbeide. Skal vi elle melle?
Hnngh... #person:meg
{puzzle7:
    ->harSvaret
- else:
    ->oppgaveloop
}
->kjeller

= oppgaveloop
MINIGAME #minigame:puzzle7
{puzzle7:
    ->harSvaret
}
Eg var ikkje heilt sikker på kva løysinga på denne oppgåva var ... #style:narrative
Men eg hadde ikkje noko val. Dette var ikkje ein morosam skattejakt lenger, no stod det om liv og død.
Eg måtte berre prøve igjen ...
->oppgaveloop

= harSvaret
Ensjø! Svaret er Ensjø! #style:dialog #person:astrid
Var det så vanskeleg? #person:wenche
Wenche gjekk bort til den store dørmekanismen. Utan å ta våpenet frå oss stilte ho det første hjulet til "E". #style:narrative
Ikkje gjer dette, Wenche. Du kjem til å angre på det. #style:dialog #person:astrid
Kva veit du, bortskjemte tenåring? #person:wenche
Mens ho snakka stilte ho det neste hjulet til "N". #style:narrative
Du har alltid fått alt du trenger, og du kjem til å leve komfortabelt utan denne arven. Eg ender på bar bakke! #style:dialog
"S" ... #style:narrative
Eg har levd i luksus i eit tiår no. Eg kan ikkje gå tilbake til å selge pølser på Narvesen. Eg kan ikkje ... og eg vil ikkje. #style:dialog
"J" ... #style:narrative
Bak denne døra ligger det ein formue, og eg har allereie bevist at eg er villig til å drepe for han. Ikkje få meg til å ... #style:dialog
Idet det siste hjulet traff "Ø", kom det eit lite klikk fra mekanismen. Deretter ... #style:narrative
... spratt det plutseleg eit nett opp av bakken frå mellom brosteinane under Wenche, som fanga henne fullstendig og samla seg i eit knytte i taket. I overraskinga klarte ho å miste våpenet. Ho var fanga som ein kanin i ei kaninfelle.
Kva? Kva? KVA? Det var ikkje dette som skulle skje! #style:dialog #person:wenche
Eg sa jo at du kom til å angre på det. #person:astrid
Berre vent! Eg kjem til å kome meg ned, og då ... #person:wenche
Ikkje før vi har ringt politiet. #person:astrid
Vent ... kva var det eigentleg som skjedde no? Var det feil passord? #person:meg
Riktig passord. Feil dør. #person:astrid
"Når du kjem til porten, vis han at du er ein Krankelfnaas."
Noko du gjorde då du låste opp skrinet med ametystanhenget ditt. #person:meg
Og kva er neste linje i diktet? #person:astrid
... #person:meg
"Ikkje gå i fella, det er lett å velja galen veg."
Dette var aldri ei dør. Det er sannsynlegvis ikkje eit rom bak der eingong. Dette er berre ei dørmekanisme som sjekker at du faktisk har lest testamentet og straffar deg om du ikkje har skjønt kva som står der. #person:astrid
Så kvar befinner neste spor seg? På Ensjø? Nei ... det må vera her i huset. #person:meg
"Gå eit steg tilbake, så vil svaret openbare seg." #person:astrid
->kjeller