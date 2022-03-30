=== avisa
BLANK #location:avisa #style:narrative person:
{not first:
    ->first
}
+ [Gå til resepsjonen] ->resepsjonen
+ [Prøv å få merksemda til ein journalist] ->journalist
+ [Eg bestemte meg for å dra til ...] ->map
+ [I lommene mine hadde eg ...] ->inventory->avisa

= first
Dagens Nyhende-redaksjonen var, på ein eller annan måte, overveldande og antiklimatisk på ein gong. #style:narrative
Lokalet var svært, iallfall samanlikna med det eg var vant til, men sannsynlegvis ein del mindre enn dei andre avisene i same gate, og sjølv om det store lokalet eg hadde kome inn i såg ut til å romme ein del journalistar, verka det som om det var berre denne etasjen.
I det store rommet eg hadde kome inn i innehaldt eit opent landskap med rekke på rekke med skrivebord - det såg ut som om det var her journalistane jobba frå - og eit lite resepsjonsområde.
->avisa

= resepsjonen
Eg gjekk bort til resepsjonen{| igjen}.
{not resepsjonist_flort: {God dag!|Hei igjen!}} Korleis kan eg hjelpe deg? #style:dialog #person:resepsjonisten
+ Eg skulle gjerne ha snakka med nokon. #person:meg
    Det skal vera fullt mogleg. Kven då? #person:resepsjonisten
    ** Ein journalist. #person:meg
    Vi har mange journalistar her, tenkte du på ein spesiell journalist, eller ... #person:resepsjonisten
    Når eg tenkte meg om, føltes det som om eg kanskje var på villspor. #style:narrative
    Dette bygget var gigantisk. Dersom Theodor Krankelfnaas hadde planta eit spor her, måtte det vera gøymd på ein litt meir logisk stad enn "hos ein tilfeldig journalist". Dei var det litt for mange av til at det føltes som ei gjennomførbar oppgåve.
    Eg ... er ikkje sikker. #style:dialog #person:meg
    Innenriks, utanriks, kultur, sport, kjæledyrspalten? #person:resepsjonisten
    ... eg veit faktisk ikkje. #person:meg
    Kanskje du kan kome tilbake når du har funne det ut? #person:resepsjonisten
    Det er nok det smartaste. #person:meg
    Takk for hjelpa uansett.
    {not resepsjonist_flort: Ha ein fin dag vidare.} #person:resepsjonisten
    ** Sjefsredaktøren. #person:meg
        Eg ante ikkje kvar i dette bygget neste spor var gøymd. Men det var snakk om eit testamente her. Krankelfnaas ante ikkje når det kom til å bli lest, så han måtte ha gøymd det ein stad med stabilitet, utan for mykje utskifting. Og sjefsredaktøren var sannsynlegvis den personen i organisasjonen Krankelfnaas hadde hatt mest kontakt med. #style:narrative
        Har du ein avtale? #person:resepsjonisten #style:dialog
        Nei ... #person:meg
        Ho er litt opptatt akkurat no, men det er mogleg eg kan presse deg inn i løpet av dagen om du kan vente litt ... #person:resepsjonisten
        Tusen takk. #person:meg
        Kva var namnet? #person:resepsjonisten
        Skriv namnet ditt her: #input:true var:playerName
        {playerName} ... #person:resepsjonisten
        Og kva pronomen bruker du?
        *** [Han/han.]
        ~ playerPronoun = "han"
        *** [Ho/henne.]
        ~ playerPronoun = "ho"
        *** [Hen/hen.]
        ~ playerPronoun = "hen"         
        *** [Dei/dei.]
        ~ playerPronoun = "dei"
        --- Resepsjonisten tasta raskt persondetaljane mine inn i datasystemet sitt. #style:narrative
        ->spurt_etter_redaktoren
    ** Den som er ansvarleg for trykkeriet dykkar. #person:meg
    Testamentet var laga av papir. Kunne det vera eit hint? Kvar finner du papir i eit avisbygg? I trykkpressa. Kunne trykkpressa innehalde neste spor? #style:narrative
        Trykkeriet? Beklager, det er nok ikkje mogleg. #person:resepsjonisten #style:dialog
        Kvifor ikkje? #person:meg
        Vi trykker avisene våre i Litauen. Vi har ikkje noko trykkeri eller nokon trykkeriansvarleg her. #person:resepsjonisten
        Åh. Beklager. #person:meg
        Det går bra. #person:resepsjonisten
        Pokker. Og eg som trudde at eg hadde vore smart. #style:narrative
    ** Marknadsavdelinga[.], takk. #person:meg
        Testamentet handla om pengar. Kunne det vera eit hint? Kven i eit avisbygg er det som jobbar med pengar? Marknadsavdelinga. Kunne dei sitja på neste spor? #style:narrative
        Beklager, dei har dratt på påskeferie. #person:resepsjonisten #style:dialog
        Åh. #person:meg
        Kan eg ta imot ein beskjed til dei? #person:resepsjonisten
        ... Eg trur ikkje det. #person:meg
        Dersom det faktisk var marknadsavdelinga eg skulle snakke med, måtte eg nesten kome tilbake etter påske. #style:narrative
    ** Deg? #person:meg
        Meg? Kva i alle dagar vil du snakke med meg om? #person:resepsjonisten
        Dersom Krankelfnaas hadde gøymd neste spor ein stad i denne bygningen, kvifor ikkje byrja å leite der folk faktisk kjem INN i bygningen? #style:narrative
        Du kjenner ikkje tilfeldigvis Theodor Krankelfnaas? #style:dialog person:meg
        Ser eg ut som om eg pleier å henge med geriatriske milliardærar? #person:resepsjonisten
        For den saks skuld, ser eg ut som om eg pleier å henge med DAUDE milliardærar?
        Nei, altså, eg berre tenker, han eide jo denne avisa ... #person:meg
        Han eide åtte tusen bedrifter. Han var ikkje på fornamn med ALLE som jobba for seg. Eg trur at sjølv sjefsredaktøren vår har møtt han berre fire-fem gonger. På tjue ÅR. #person:resepsjonisten
        Eg meinte berre ... Du er ikkje kven som helst, liksom. Du er ... avisas ansikt utad, på ein måte. Alle dei viktige folka som er innom her, kjem til deg først. #person:meg
        ... #person:resepsjonisten
        Prøver du å flørte med meg? Er det det som er greia her?
        *** (resepsjonist_flort) Ja ...? #person:meg
            Ok... Lytt veldig nøye, eg seier dette berre ein gong. #person:resepsjonisten
            SKJERP DEG, din creep.
            Eg aner ikkje kva slags spel du trur du speler, men det er ALDRI greit å flørte med folk som er på jobb.
            Utan. Unntak.
            At eg smiler og er hyggeleg med deg betyr ikkje at eg liker deg. Det betyr at jobben min er å behandle alle som kjem inn gjennom den døra der som folk.
            At du konfronterer meg på jobben betyr ikkje berre at eg befinner meg i ein kontekst der eg ikkje er på jakt etter ein date. Det betyr òg at eg er i ein kontekst der det, såvidt du veit, kan ha negative konsekvensar for meg å vise motvilje når du opptrer truande.
            Er det forstått?
            ... #person:meg
            Er. Det. Forstått? #person:resepsjonisten
            ... ja. Beklager. #person:meg
            Og no har ikkje eg veldig lyst til å snakke meir med deg, så no synest eg at du skal gå bort dit litt, eventuelt gå ut ein tur, og ikkje kome tilbake til meg før faktisk har noko å snakke med meg om. #person:resepsjonisten
            Unnskyld. #person:meg
            Gå no. #person:resepsjonisten
        *** Nei[!], det var ikkje sånn meint, eg berre ... #person:meg
        Godt. Då foreslår eg at vi legger den ballen daud. Eg kjente ikkje Theodor Krankelfnaas, og det er alt eg har å seie om den saka. #person:resepsjonisten
        Skjønner. Beklager. #person:meg 
+ Det var ingenting. #person:meg
     {not resepsjonist_flort: Ok...? Ha ein fin dag vidare, då!} #person:resepsjonisten
- ->avisa

= spurt_etter_redaktoren
{Og kva er det du vil|Var det noko anna du ville} snakke med henne om? #person:resepsjonisten #style:dialog
* Eit rebusløp. #person:meg
    Du tøyser. Du tuller med meg. #person:resepsjonisten
    Ikkje eigentleg. Greia er at ... #person:meg
    Eg kan ikkje slippe deg inn til redaktøren for å snakke om eit rebusløp. Det vil ikkje kome noko anna ut av det enn store kvantum bortkasta tid, og eg kjem til å sjå ut som ein idiot som har sluppe deg inn til henne. #person:resepsjonisten
    Skal du snakke med sjefsredaktøren, må du nesten kome opp med noko betre enn det. La meg spørja deg igjen ...
* Theodor Krankelfnaas. #person:meg
    {resepsjonist_flort:
        Ikkje sei at du har tenkt å "flørte" med sjefen min òg? #person:resepsjonisten
        Nei, eg ... #person:meg
    }
    Theodor Krankelfnaas er død. Kva er det å seie om han? #person:resepsjonisten
    Nei, det gjelder ... arven hans. #person:meg
    Er du advokat? #person:resepsjonisten
    Eg lager Wordpress-themes. Men det er ikkje viktig akkurat no. Eg trur at ein del av testamentet hans er gøymd i dette huset. Eller at redaktøren har det. Eller ... #person:meg
    Unnskyld, men det høyrast litt ... søkt ut. Er du i familie med Krankelfnaas? Har du nokre handfaste bevis på at redaktøren er involvert i dette? #person:resepsjonisten
    Nei. Og nei. #person:meg
    Då trur eg nesten ikkje eg kan hjelpe deg. Redaktøren er veldig opptatt i dag. Eg kan kanskje klare å presse deg inn på tysdag. #person:resepsjonisten
    ... eg forstår. #person:meg
* Det er hemmeleg. #person:meg
* [NOMEN NIGMA.]
- ->spurt_etter_redaktoren

= journalist
Det sat ein journalist og hamra frenetisk på tastaturet berre nokre meter frå meg.
Unnskyld meg? #style:dialog person:meg
... #person:journalist
Kan eg få spørja deg om noko? #person:meg
... #person:journalist
{&Kan du høyra meg?|Er det gøy å vera journalist?|Er det vanskeleg å vera journalist?|Kor mange ord skriver du i minuttet?|Har du lest nokre fine bøker i det siste?|Gleder du deg til sommarferien?|What is the airspeed velocity of an unladen swallow?|Når har du bursdag?|Er du ein engel?|Kva er det du skriver, eigentleg?|Skriver du ein banebrytande artikkel som vil avsløre at ein korrupt politiker har gjort noko dumt og at vanlege folks sparepengar står i fare?|Skriver du om Charter-Svein?|Skriver du ein omtale av ein ny film? Eller eit teaterstykke? Oooh, eller eit dataspel?|Kvifor ignorerer du meg?|Eg tenkte å gå vidare no, skal eg ta med noko til deg neste gong eg kjem innom? Kaffi, eller kroneis, eller ...} #person:meg
... #person:journalist
Hen svarte ikkje. Kanskje hen ikkje høyrde meg. #style:narrative
->avisa
