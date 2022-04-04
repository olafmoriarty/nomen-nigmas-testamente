=== avisa
BLANK #location:avisa #style:narrative #person:
{not first:
    ->first
}
+ [Gå til resepsjonen] ->resepsjonen
+ {redaktoren_first} [Gå inn til redaktøren]
    Eg gjekk inn på redaktørens kontor igjen.
    Ja? Kva vil du? #person:katrina #style:dialog
    ->redaktoren
+ [Prøv å få merksemda til ein journalist] ->journalist
+ [Sjå på skrivebordet til Uno] ->unodesk
+ [Eg bestemte meg for å dra til ...] ->map
+ [I lommene mine hadde eg ...] ->inventory->avisa

= first
Dagens Nyhende-redaksjonen var, på ein eller annan måte, overveldande og antiklimatisk på ein gong. #style:narrative
Lokalet var svært, iallfall samanlikna med det eg var vant til, men sannsynlegvis ein del mindre enn dei andre avisene i same gate, og sjølv om det store lokalet eg hadde kome inn i såg ut til å romme ein del journalistar, verka det som om det var berre denne etasjen.
Det store rommet eg hadde kome inn i innehaldt eit opent landskap med rekke på rekke med skrivebord - det såg ut som om det var her journalistane jobba frå - og eit lite resepsjonsområde.
->avisa

= resepsjonen
Eg gjekk bort til resepsjonen{| igjen}.
{not resepsjonist_flort: {God dag!|Hei igjen!}} Korleis kan eg hjelpe deg? #style:dialog #person:resepsjonisten
+ {not redaktoren_first} Eg skulle gjerne ha snakka med nokon. #person:meg
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
        Skriv namnet ditt her: #input:true #var:playerName
        {playerName} ... #person:resepsjonisten
        Og kva pronomen bruker du?
        *** [Han/han.]
        ~ playerPronoun = "han"
        ~ playerPronounCap = "Han"
        *** [Ho/henne.]
        ~ playerPronoun = "ho"
        ~ playerPronounCap = "Ho"
        *** [Hen/hen.]
        ~ playerPronoun = "hen"
        ~ playerPronounCap = "Hen"
        *** [Dei/dei.]
        ~ playerPronoun = "dei"
        ~ playerPronounCap = "Dei"
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
        Du kjenner ikkje tilfeldigvis Theodor Krankelfnaas? #style:dialog #person:meg
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
            Det er fullstendig lavmål, og sjølv dersom eg hadde vore interessert i det, er det absolutt ikkje sånn ein opptrer ovanfor eit anna menneske. Er det forstått?
            ... #person:meg
            Er. Det. Forstått? #person:resepsjonisten
            ... ja. Beklager. #person:meg
            Og no har ikkje eg veldig lyst til å snakke meir med deg, så no synest eg at du skal gå bort dit litt, eventuelt gå ut ein tur, og ikkje kome tilbake til meg med mindre du faktisk har ein god grunn til det. #person:resepsjonisten
            Unnskyld. #person:meg
            Gå no. #person:resepsjonisten
        *** Nei[!], det var ikkje sånn meint, eg berre ... #person:meg
        Godt. Då foreslår eg at vi legger den ballen daud. Eg kjente ikkje Theodor Krankelfnaas, og det er alt eg har å seie om den saka. #person:resepsjonisten
        Skjønner. Beklager. #person:meg 
* {redaktoren_first} Kan eg få snakke med redaktøren igjen? #person:meg
    Du kan berre gå rett inn. #person:resepsjonisten
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
    Eh. Redaktøren er veldig opptatt i dag. Eg kan kanskje klare å presse deg inn på tysdag. #person:resepsjonisten
    Eg forstår. #person:meg
    Med  mindre ... #person:resepsjonisten
* Det er hemmeleg. #person:meg
    Nei. Det kjem ikkje på tale. #person:resepsjonisten
    Eg set ikkje opp avtaler mellom redaktøren og vilt framande som vandrer inn frå gata utan å vite kvifor. Det ender fort i at du skjeller henne ut for at vi har trykka artiklar som insinuerer at jorda er rund, eller at vaksiner virker, eller at Belgia er ein sjølvstendig stat.
    Det ... er forsåvidt forståeleg. #person:meg
* [NOMEN NIGMA.]
    Eg hadde klart å leggja merke til dei ti bokstavane. Var det heilt tilfeldig, eller danna dei faktisk to ord? #style:narrative
    ... NOMEN NIGMA. #style:dialog #person:meg
    ... kva? Sa du ... Nomen Nigma? #person:resepsjonisten
    Beklager. Eg skjønte då eg sa det at det ikkje gav ... #person:meg
    KVIFOR SA DU IKKJE DET MED EIN GONG? #person:resepsjonisten
    ... #person:meg
    Ho sit opptatt med  nokon akkurat no, men eg trur ho straks er ledig. Bli med meg, kontoret hennes er rett her borte. #person:resepsjonisten
    Du veit den kjensla når du seier noko veldig riktig, men du ikkje aner kva det var du sa? #style:narrative
    ->redaktoren_first
- ->spurt_etter_redaktoren

= redaktoren_first
... då trur eg at eg har fått oversikt over situasjonen. #style:dialog #person:twist
Han dukkar nok opp igjen. Det har sannsynlegvis ei naturleg forklaring, men vi må nesten rapportere det likevel. #person:katrina
Det er til stor hjelp. Eg drar til Snobbediengen no for å ta ein prat med den vesle venninna hans, men sannsynlegvis dukkar han opp igjen i løpet av helga. #person:twist
Katrina? Har du fem minutt? #person:resepsjonisten
Eksellent timing, Quinn. Twist skulle akkurat gå. #person:katrina
... #person:twist
Var det ... ein politimann? Ein politibetjent? Ein politiinspektør? Eg såg for lite krim til å vera sikker. #style:narrative
Katrina, dette er {playerName}. {playerPronounCap} ville snakke med deg om ... Nomen Nigma.  #style:dialog #person:resepsjonisten
Det kan ikkje vera mogleg ... #person:katrina
Er det deg? Er det verkeleg deg?
Uh... #person:meg
Eg kan ikkje seie at eg sette pris på det vesle forsvinningsnummeret ditt, men ... Du har meir materiale no, ikkje sant? #person:katrina
... beklager. Eg veit ikkje kva du snakkar om. #person:meg
Er ... er ikkje du Nomen Nigma? #person:katrina
* Nei. #person:meg
* (har_spurt_kven_nn_er) Kven er Nomen Nigma? #person:meg
- Huh. Du fekk opp håpet mitt eit lite augeblikk. #person:katrina
{not har_spurt_kven_nn_er:
    Unnskyld, men ... kven er Nomen Nigma? #person:meg
}
Nomen Nigma er eit dekknamn. Eg har aldri klart å finne ut kva hen eigentleg heiter, og gudane skal vite at eg har prøvd. #person:katrina
Eg mottok ein konvolutt for tre år sidan frå ein anonym person. Konvolutten innehaldt ei gåte ... og eit følgjebrev der avsendaren, som kalte seg Nomen Nigma, spurte om å få lov til å lage oppgåver for oss.
Oppgåver? #person:meg
Kryssord, ordsøk, sudoku, rebusar, nonogram ... den typen ting. Hjernetrim som vi kan trykke ved sidan av teikneseriane i Dagens Nyhende kvar laurdag som folk kan prøve å løyse. #person:katrina
"Kontakt meg på denne e-postadressa om tilbodet er av interesse." Eg liker ikkje å forholde meg til anonyme personar. Men Nigma var billig, og oppgåvene var av svært høg kvalitet. Betre enn dei konkurrentane våre har.
Etter det har hen laga oppgåver for avisa vår. Og hen har alltid vore pålitelig som ei klokke. Etter det fekk eg ein ny e-post kvar onsdag morgon, med ei oppgåve vi kunne trykke komande laurdag.
Førre veke kom det ingen e-post. Ikkje denne veka heller. Og eg har ikkje klart å få tak i Nigma etter det. Det er som om hen er sunke i jorda.
Skjønner ... Vel, det er diverre ikkje meg. #person:meg
Men du kjente namnet Nomen Nigma. Vi har ikkje delt det utanfor avisa, så korleis har du høyrd det? #person:resepsjonisten
Eg ... veit kven Nomen Nigma er. #person:meg
Ok? Kven? #person:katrina
->kven_er_nomen_nigma

= kven_er_nomen_nigma
Eg trur at Nomen Nigma er ... #person:meg
* Deg[?], redaktør!
    Det var ein veldig merkeleg konklusjon på det eg nettopp fortalte deg. Kvifor skulle eg sende anonyme brev til meg sjølv? Kvifor skulle eg sitja her og vera desperat etter å finne ut kven Nomen Nigma er fordi hen har kutta all kontakt? #person:katrina
    Det er nesten så eg kunne tenkja meg å høyra korleis i alle dagar du har resonnert deg fram til det.
    Vel, eg tenkte ... #person:meg
    Eg sa nesten. Gjett igjen. #person:redaktøren
* Theodor Krankelfnaas[?].
    Mangemilliardæren? Det er latterleg. Har du noko som helst som underbygger den påstanden? #person:katrina
    Eg trur det. #person:meg
    Krankelfnaas eigde denne avisa, gjorde han ikkje?
    Det tyder ikkje at han jobba her i skjul. Eg trur ikkje Jeff Bezos skriver restaurantomtalar i Washington Post heller. #person:katrina
    Krankelfnaas var eksentrisk, og han elska å lage oppgåver. Så høgt at testamentet hans var eit rebusløp. #person:meg
    Kanskje det, men ... #person:katrina
    Og Nomen Nigma slutta å kontakte dykk i førre veke. Altså då Krankelfnaas døydde. #person:meg
    Det kan jo vera eit samantreff, men ... #person:katrina
    Og ... #person:meg
    Eg blei leia hit av testamentet til Krankelfnaas. Eit testamente som innehaldt eit dikt. Eit dikt med ti utheva bokstavar ... N O M E N N I G M A.
    Det er då ikkje ... Jo. Herregud, du har heilt rett. Krankelfnaas? Verkeleg? #person:katrina
    ...
    Så Nomen Nigma er død. Det er ikkje akkurat gode nyhende ... men du skal ha takk for at du oppklarte det for oss.
    Er det noko vi kan gjera for deg til gjengjeld?
    Eg leiter etter ei gåte. Eller ein rebus, eller ... noko som helst som Krankelfnaas kan ha gitt deg eller lagt igjen her på eit tidspunkt. Finst det noko slikt? #person:meg
    ... ja. #person:katrina
    Ho la hendene på PC-tastaturet, og leitte fram eit dokument. Ganske snart summa det i printeren, og ho gav meg arket som kom ut av han. Det såg ut som eit kryssord. #style:narrative
    ~ inv += oppgaveark
    For veldig lenge sidan sendte Nomen Nigma meg denne gåta. I e-posten som fulgte med stod det at dersom hen nokon gong ikkje leverte ei gåte i tide til deadline, kunne eg trykke den. Hen bad meg om å ikkje bruke ho før det. #style:dialog #person:katrina
    Så denne stod i avisa på laurdag? #person:meg
    Nei. Den er verkeleg ikkje blant hens beste, så eg endte opp med å trykke ei ekstra vitseteikning i staden for. Men du må gjerne ta ho med deg. Kan du bruke ho til noko ... #person:katrina
    Det kan eg nok. Tusen takk skal du ha. #person:meg
    Er det noko anna eg kan hjelpe deg med? #person:katrina
    ->redaktoren
* Gaute Ormåsen?
    ... Kva? Kvifor i alle dagar skulle Gaute Ormåsen vera Nomen Nigma? #person:katrina
    Fordi hen er anonym, og Gaute Ormåsen er anonym? #person:meg
    ... #person:katrina
    ... er ikkje han er ein av dei Subwoolfer-folka? #person:meg
    Eg trudde det var Ylvis. #person:resepsjonisten
    Eg trudde det var Kurt Foss og Reidar Bøe. #person:katrina
    Det ... det var berre ein spøk. #person:meg
    Ikkje ein veldig god ein. #person:katrina
- ->kven_er_nomen_nigma

= redaktoren
+ {flags !? veitOmUno} Kva var det du snakka med politiet om?[] Eg skjønte at det var snakk om ein savna person, men ... #person:meg
    Det? Det har ingenting med Theodor Krankelfnaas å gjera. #person:katrina
    Er du sikker? #person:meg
    Har du nokon grunn til å tru noko anna? #person:katrina
    ** {inv ? visittkort} [Adressa hans.]
        Theodor Krankelfnaas budde i Snobbediengen 3. Og han der Twist sa at han skulle prate med "den vesle venninna hans i Snobbediengen". #person:meg
        Det kan vera eit samantreff ... #person:katrina
        Men eg trur nok du har rett i at det ikkje er det.
        ~ flags += veitOmUno
        Twist var her for å stille meg nokre spørsmål om Uno Martinsen. Ein av journalistane våre.
        Han har ikkje vore på jobb denne veka. Så eg ringte til mor hans, og han har visst ikkje vore heime sidan helga heller.
        Trur du at noko har skjedd med han? #person:meg
        Eg veit ikkje. Han har ein tendens til å vera ... eg vil ikkje kalle han dum, men ... korttenkt? Når han jobbar med ei stor sak, har han ein tendens til å dykke heilt ned i ho og gløyme resten av verda. #person:katrina
        Så kva sak jobbar han med no? #person:meg
        Eg veit ikkje. Sist eg snakka med han sa han at han hadde funne noko som muligens kunne vera ei sak, men at det ikkje var konkret nok til at han kunne dele nøyaktig kva det var enno. #person:katrina
        Det siste han jobba med før det var ...
        ... åh.
        Kva? #person:meg
        Ein nekrolog for Theodor Krankelfnaas. #person:katrina
        Kan eg få sjå på skrivebordet hans? #person:meg
        Twist ba meg om å ikkje la nokon røre det. #person:katrina
        ... men det er nede i kontorlandskapet ved resepsjonen.
    ++ Nei. #person:meg
      Ikkje eg heller. Var det noko anna du ville? #person:katrina
+ [Gå tilbake til resepsjonen]
    Lukk døra når du går. #person:katrina
    ->avisa
- ->redaktoren

= journalist
Det sat ein journalist og hamra frenetisk på tastaturet berre nokre meter frå meg.
Unnskyld meg? #style:dialog #person:meg
... #person:journalist
Kan eg få spørja deg om noko? #person:meg
... #person:journalist
{&Kan du høyra meg?|Er det gøy å vera journalist?|Er det vanskeleg å vera journalist?|Kor mange ord skriver du i minuttet?|Har du lest nokre fine bøker i det siste?|Gleder du deg til sommarferien?|What is the airspeed velocity of an unladen swallow?|Når har du bursdag?|Er du ein engel?|Kva er det du skriver, eigentleg?|Skriver du ein banebrytande artikkel som vil avsløre at ein korrupt politiker har gjort noko dumt og at vanlege folks sparepengar står i fare?|Skriver du om Charter-Svein?|Skriver du ein omtale av ein ny film? Eller eit teaterstykke? Oooh, eller eit dataspel?|Kvifor ignorerer du meg?|Eg tenkte å gå vidare no, skal eg ta med noko til deg neste gong eg kjem innom? Kaffi, eller kroneis, eller ...} #person:meg
... #person:journalist
Hen svarte ikkje. Kanskje hen ikkje høyrde meg. #style:narrative
->avisa

= unodesk
Eg lot blikket gli over rekka av skrivebord til eg såg eitt som hadde enkle politisperringar rundt seg, og byrja å bevege meg i den retninga.
... og kvar har du tenkt deg? #style:dialog #person:resepsjonisten
Eg ville berre ta ein titt på skrivebordet til Uno Martinsen. Er det i orden? #person:meg
Nei. Politiet 
->avisa