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
+ {inv ? testamente and not kvifor_avhor} [Eg ringte på døra.] -> butler
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
+ {flags ? harAstridsTillit} [Spør Astrid Isabella om ...] ->snakkMedAstrid->villaen
+ {flags ? harTilgangTilHuset} [Gå til rom ...] ->velgrom->villaen
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
        Det var eit bilete av Astrid Isabella som smilte til kameraet. Ho hadde på seg ein raud- og kvitstripete topp og ein svart bøttehatt, og ho hadde eit lite anheng i eit kjede rundt halsen. I handa hadde ho eit glas som var halvfullt av noko eg gjekk ut frå at var Solo.  Biletet var tatt innandørs, i eit rom med dyre tapetar, og bak henne hang det eit stort maleri av ein eldre mann og ... ei ape? Under biletet stod hashtaggen "\#oslosommer".
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

=== snakkMedAstrid
* (astridHarSettTestamentet) [Testamentet]
    Så kva synest du om testamentet? #style:dialog #person:meg
    Når sant skal seiast har eg ikkje lest det enno. #person:astrid
    Var du ikkje der då det blei lest opp? #person:meg
    Nei. Eg var heilt utmatta då eg kom av nattoget i dag tidleg, så eg sa til Wenche at dei godt kunne gjera det utan meg. #person:astrid
    Var du ikkje nysgjerrig? Det er jo veldig mykje pengar det er snakk om. #person:meg
    Eg lurer litt på kva bestefar har funne på. Men når sant skal seiast ... og dette vil høyrast veldig bortskjemt og priviligert ut ... eg trenger ikkje pengane.
    Du veit korleis privilegieblinde folk som allereie har ein del pengar alltid seier at pengar ikkje kan kjøpe lykke? Eg har fått små og store gåver frå bestefar så lenge eg har levd, og det meste av det har foreldra mine satt i indeksfond for meg.
    Plan A er å bli ferdig med utdanninga, finne ein OK jobb og bygge opp noko frå bunnen av sånn som bestefar gjorde. Men skulle det bli nødvendig, trenger eg ikkje å jobbe ein dag i mitt liv. Eg trenger ikkje denne arven.
    Ho kasta eit blikk ned på konvolutten eg hadde gitt henne, før ho opne han og trakk ut dei to papirarka. #style:narrative
    Pokker heller, du gjorde meg nysgjerrig. #style:dialog
    Huh? Dette er ... eit dikt? Og  ... ei gåte? Ein rebus?
    Interessant ...
    Det var som om det gløda i auga hennes. #style:narrative
    Typisk bestefar ... #style:dialog #person:astrid
* [Familien]
    Har de stor familie? #style:dialog #person:meg
    Bestefar hadde fire born og seks barneborn. Dei fleste av dei er spreidd for alle vindar no. #person:astrid
    Mamma og pappa er i Bolivia. Dei jobbar for Leger uten grenser. Eg har fått fortalt dei at bestefar er død, men dei har ikkje moglegheit til å kome heim no.
    Onkel Oskar driver eit ysteri på Fosen. Tante Agatha har ein gård i Nord-Sverige. Tante Zelda jobber i miljøverndepartementet og har eit husvære på Grünerløkka. Eg trur ho var med på opplesinga av testamentet i dag.
    Kva med Wenche? Kva forhold har de til henne? #person:meg
    Ho er vel ok ... Ho er bestefars tredje kone. #person:astrid
    Vi var sjølvsagt litt skeptiske til henne då dei gifta seg. Ho var yngre enn borna hans, og det føltes openbart at ho berre var ute etter pengane hans.
    Men det er ti år sidan, og dei har haldt saman sidan, så ... nokon form for gnist må det nesten vera der.
* [Instagram-biletet]
    Eg skjøner ikkje kvifor den mannen hadde det biletet av meg. Var han ein stalker? #style:dialog #person:astrid
    Kva slags bilete er det eigentleg? #person:meg
    Det er ein heilt vanleg selfie. Eg tok han her i huset, faktisk. #person:astrid
    Å? #person:meg
    På kontoret til bestefar. Eg var her på sommmarferie i fjor. Det er han på maleriet. #person:astrid
    Hmm ... #person:meg
    Martinsen hadde visst nylig jobba med ei sak om bestefaren din ... Kan det vera mogleg at det var maleriet han var interessert i?
    Kvifor? Det var ingenting spesielt med det. Bestefar hadde bilete av seg sjølv overalt, og ingen av dei var verdt særleg mykje. #person:astrid
    Eg er ikkje sikker ... Det var her i huset, sa du? #person:meg
    Ja. #person:astrid
* {astridHarSettTestamentet} [Theodor Krankelfnaas]
    Du sa at dette testamentet var typisk bestefaren din? #person:meg #style:dialog
    Absolutt. For det første fordi han alltid sa at han mislikte folk som blei hadde arva alt dei eigde og som aldri hadde måttet jobbe for noko som helst. Det hadde ikkje likna han å berre gi oss mange milliarder kroner berre fordi han var død.
    Dessutan elska han nittitalsfilmar. Da Vinci-koden. Ready Player One. Sånne narrativ der folk med sitt siste livspust sette himmel og jord i rørsle for å skape eit svært mysterium som dei som kom etter dei måtte løyse. #person:astrid
    ... Ingen av dei filmane er frå nittitalet. #person:meg
    Men du skjøner kva eg meiner. Han likte dei store, episke twistane som snudde opp ned på alt. Han var ikkje så god på det vesle, kvardagslege. Han var ikkje så glad i å handtere kjensler og kommunikasjon og dei små handlingane som faktisk driver livet framover. Han var meir ... BAM, her er ein plot twist som endrer ALT. Forteljaren er eit spøkjelse. Personen som blir avhørt er ein upåliteleg forteljar. Badguyen er eigentleg protagonistens pappa. #person:astrid
    Delte du den mentaliteten? #person:meg
    Næh. Eg foretrekker kjensler og kommunikasjon og dei små handlingane som faktisk driver livet framover. #person:astrid
* {astridHarSettTestamentet} [Kan eg få kome inn?]
    Eg har full forståing for det om du svarer nei, men ... kunne eg ha fått kome inn i huset og sjå meg omkring litt? #style:dialog #person:meg
	At det var? Kvifor? #person:astrid
	Eg har ingen god grunn. Det er berre ... testamentet. #person:meg
	Eg løyste det første sporet, den du har i konvolutten der.
	Det er kartkoordinater, er det ikkje? #person:astrid
	Godt observert. Dei førte meg til Dagens Nyhende i Akersgata, der redaktøren gav meg spor nummer to. Og det kan eg ikkje finne fram til på eiga hand. #person:meg
	På grunn av ... diktet, ikkje sant? #person:astrid
	"Målet ditt er evig rikdom, spor er skjult frå topp til bunn. Eitt er skjult på kartet, men dei fleste er på heimleg grunn." #person:meg
	"Skjult på kartet" var Akersgata. Det betyr at resten av spora ... er her.
	Og du vil vinne "evig rikdom", er det greia? #person:astrid
	Du har vel ingen grunn til å slippe meg inn her om eg svarer ja på det? Men nei, eg tviler sterkt på at det overhovudet er mogleg for meg. #person:meg
	"Når du kjem til porten, vis han at du er ein Krankelfnaas"? #person:astrid
	Eg er berre nysgjerrig. Eg har blitt litt investert i denne skattejakta, og det hadde vore veldig gøy å sjå kor ho ender. #person:meg
	... #person:astrid
	... OK. Kvifor ikkje.
	Verkeleg? #person:meg
	Å følgje eit brødsmulespor bestefar har lagt ut til oss høyrast unekteleg gøy ut. Og om du allereie har funne spor nummer to ... eg er med. #person:astrid
	Har du nokre teoriar om kvar han kan ha gøymd resten av spora? #person:meg
	Det var iallfall nokre rom han likte betre enn andre. #person:astrid
	Han har eit bibliotek i andre etasje. Alle veggane er dekka med bokhyller, eg trur det er tusenvis av bøker der. Det må vera den perfekte staden å gøyme bort noko.
	I første etasje ligger kontoret til bestefar. Det var der han tilbrakte mest tid. Der er skrivebordet hans, og PC-en hans, og eg veit at han har eit pengeskap der.
	Eit pengeskap, sa du? #person:meg
	Ja, men det er berre bestefar som kan kombinasjonen. #person:astrid
	Ved sidan av kontoret ligger daglegstua. Om vinteren er det veldig koseleg å drikke kakao foran peisen. Og så er det eit stort flygel der bestefar pleide spele for oss på.
	Og eg veit at han har brukt mykje tid i hagen dei siste åra. Den er heilt gigantisk, det må vera tusenvis av blomsterartar der.
	Hmm ... #person:meg
	~ flags += harTilgangTilHuset
+ [Det var alt.]
Eg trur ikkje eg har meir å spørja deg om akkurat no. #person:meg #style:dialog
Ok. #person:astrid
    ->->
- ->snakkMedAstrid
