LIST inv = visittkort, testamente
VAR namn=""

// Historia starter på kontoret, så gå dit
->kontoret

=== map
+ [Kontoret mitt] ->kontoret
+ {inv ? visittkort} [Slott Krankelfnaas] ->snobbediengen

=== inventory
+ {inv ? testamente} [Theodor Krankelfnaas' testamente]
    
+ {inv ? visittkort} [Fru Krankelfnaas' visittkort]
    På visittkortet står det eit namn - "Wenche Krankelfnaas" - og ei adresse - "Snobbediengen 3, Oslo". #style:narrative
    Det står ikkje ei e-postadresse her. Bah, typisk.
    Det står eit telefonnummer nederst på kortet. Eg hatar å ringe folk, så å bruke det blir ikkje aktuelt.
+ ->
Lommene mine er tomme. ->->
- ->->

=== kontoret
{not first:
->first
}
+ [På skrivebordet ...] ->skrivebord
+ [Eg bestemte meg for å dra til ...] ->map
+ [I lommene mine hadde eg ...] ->inventory->kontoret

= first
Kva er ditt namn? #input:true #var:namn #style:narrative
Hei, {namn}!
Det var ein grå og regnfull formiddag. Den typen grå og regnfull du berre finner i Oslo i april. #style:narrative
Utanfor det dårleg isolerte kontorvindauget var gata allereie fylt av bilar på veg til påskefjellet, og stressa menneske løp inn og ut av butikkar for å kjøpe marsipan eller skismurning eller noko anna dei berre måtte ha til påske.
Eg hadde ikkje hatt ein kunde på mange dagar. Alt tyda på at dette kom til å bli ein særs uproduktiv dag.
Det forandra seg brått og storslagent då det ut av det blå banka på døra, og ei kvinne i førtiåra spaserte inn.
God dag. Kan eg kome inn? #style:dialog #person:wenche
Ho venta ikkje på eit svar. Ho hadde neppe tatt nei for eit svar uansett. Den rakrygga haldninga, det overlegne blikket og kjolen som nærmest dufta av tusendollarsedlar sendte klare signal om at dette var ein person som var svært vant til å få det som ho ville.  #style:narrative
Ho fiska eit visittkort opp av veska, og la det på skrivebordet.
Mitt namn er Wenche Krankelfnaas. Eg var gift med Theodor Krankelfnaas. #person:wenche #style:dialog
Theodor Krankelfnaas ... #person:meg #style:dialog
+ Han trur eg eg har høyrd om.[] Det er han eksentriske milliardæren, er det ikkje?
+ Theodor ... Krankelfnaas?[] Kven er det?
Min mann var forretningsmann, ein ganske vellukka ein òg. #person:wenche
- Han vaks opp i Skatval og starta med to tomme hender. Han sette opp ein liten verkstad der han reparerte kalkulatorar og skrivemaskiner, og hadde nok forteneste til å få råd til å ta handelshøgskolen.
I 1975 starta han eit firma som produserte musematter. Det var slik han tjente sin første million.
Fortenesta investerte han i andre foretak. Ein puslespelfabrikk i Vancouver. Eit iskaffibryggeri i Stavanger.
Han eiger fire dagligvarekjeder. Ei avis i Akersgata. Eit rekepelleri i Reykjavik. Ein videospelprodusent i Kyoto. Ein nattklubb i Barcelona ...
... eigde. Han døydde i førre veke. #person:wenche
Åh. Kondolerer. #person:meg
Så kva bringer deg hit? Kva kan eg hjelpe deg med?
Min manns testamente blei lest opp i går. Det innehaldt ... ei overrasking. #person:wenche
Kva slags overrasking? #person:meg
Teddy var litt ... eksentrisk. Vi hadde forventa eit heilt typisk standard testamente. Litt til meg, litt til familien hans, litt til Flyktninghjelpen eller Blodbanken eller kva det no er folk gir pengar til i dag. #person:wenche
I staden for fekk vi ...
+ Eit testamente på røvarspråk? #person:meg
+ Ein tom konvolutt? #person:meg
+ Eit eigarbevis på eit ikkje-fungibelt token? #person:meg
+ Eit heilt typisk standard testamente? #person:meg
- Verre. Ei GÅTE. #person:wenche
Ho fiska ein konvolutt opp av veska. #style:narrative
I staden for eit testamente, har Theodor gitt oss ... første brikke i eit rebusløp. #style:dialog
Og den som finner påskeegget ved enden av regnbuen får heile formuen hans? Artig. #person:meg
Det er ei farse, og advokatane mine jobbar sjølvsagt allereie med å finne ein måte å få tilgong til bankkontoen hans, og å få overført huset vårt til meg. #person:wenche
Men Theodor var paranoid. Han stolte ikkje nok på banken til å setja alle pengane sine dit, så veldig mykje av det omsette han i gull og edelsteinar. Og alt det har han gøymd bort ... i den andre enden av dette rebusløpet.
Dette er ei interessant historie, men ... det svarer ikkje eigentleg på kvifor du har kome hit? #person:meg
Eg treng ein dyktig detektiv som kan kome til bunns i dette og finne ut kvar Teddy har gøymd bort alle dei midlane det er min ... vår fulle rett å arve. #person:wenche
Uh ... #person:meg
+ Eg er ingen detektiv.
- Kva? #person:wenche
Er ikkje du privatdetektiv Addison Barsk?
Nei. #person:meg
Men eg slo opp på privatdetektivar i telefonkatalogen og fekk opp denne adressa? #person:wenche
Telefonkatalog? Det er godt mogleg det jobba ein detektiv på denne adressa sist ein av dei blei utgitt, ja. #person:meg
Eg lager Wordpress-themes. Kan eg frista deg med ein blogg? Kanskje ein kornblå og sennepsgul med ein bildekarusell på toppen?
Hrmpf! Det er det frekkaste ... #person:wenche
Ho snudde seg på flekken og storma ut av rommet, og passa på å smelle døra hardt igjen då ho gjekk. #person: #style:narrative
Definitivt ein av dei ti merkelegaste formiddagane eg har hatt.
->kontoret

= skrivebord
Skrivebordet mitt var fullt av papirer. Det var eit salig rot, men det var mitt rot, og eg visste kvar alt var.
{inv !? visittkort:Visittkortet fru Krankelfnaas hadde lagt frå seg lå framleis på bordet.}
{inv !? testamente:Heilt på enden av bordkanten, lengst frå meg, lå det ... ein stor konvolutt. Huh. Kvar kom den frå? Den var ikkje min.}
* [Plukk opp visittkortet]
På visittkortet stod det eit namn og ei adresse. "Wenche Krankelfnaas, Slott Krankelfnaas, Snobbediveien 3, Oslo". Eg putta kortet raskt i lomma.
~ inv += visittkort
* [Plukk opp konvolutten]
Den opne konvolutten innehaldt ein bunke tunge papirark, og det blei brått veldig openbart kvar han kom frå då eg såg teksten "Theodor Krankelfnaas' siste vilje og testament" med blokkbokstavar på framsida av konvolutten.
Eg hugsa at gjesten min hadde funne fram testamentet for å lese det for meg, men i forvirringa som oppstod må ho ha gløymd å ta det med seg igjen.
Forhåpentlegvis var det berre ein kopi, men det hadde nok uansett vore greitt å returnere det til henne.
~ inv += testamente
* ->kontoret
- ->kontoret

=== avisa

= resepsjonen
Redaksjonsområdet til 
->END

=== snobbediengen
Eg var framme.
+ [Eg bestemte meg for å dra til ...] ->map
+ [I lommene mine hadde eg ...] ->inventory->snobbediengen
->END