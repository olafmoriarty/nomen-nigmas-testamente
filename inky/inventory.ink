=== inventory
BLANK #style:narrative person:
+ {inv ? mobil} [Mobiltelefonen]
    Eg fann fram mobilen, skrolla raskt gjennom {Twitter|Snapchat|Instagram|tekstmeldingane mine|e-posten min|ein wikipediaartikkel om {~storpudlar|belgiske teikneseriar|ei elv i Malaysia|Bobbysocks|støvsugarar|stretchlaken|tikka masala-kylling|Hitra, Frøya og Fjellværøya|Heismann Hå|barbermaskiner|Metroid|akvariefisk|lysrør|Vincent van Gogh|unbrakonøklar|strikkhopping|Peter Christel Asbjørnsen|Brannmann Sam|flodhestar|Minecraft|Wikipedia|Pyongyang|påskemarsipan|Agatha Christie|Bernhard Borge|røykvarslarar|Sogn og Fjordane|selbuvottar|sverdfisk|krysantemum}}, og la han tilbake i lomma.
+ {inv ? testamente} [Theodor Krankelfnaas' testamente] ->testamentet->
+ {inv ? visittkort} [Fru Krankelfnaas' visittkort]
    På visittkortet står det eit namn - "Wenche Krankelfnaas" - og ei adresse - "Snobbediengen 3, Oslo". #style:narrative
    Det står ikkje ei e-postadresse her. Bah, typisk.
    Det står eit telefonnummer nederst på kortet. Eg har telefonskrekk, så å bruke det blir ikkje aktuelt.
+ {inv ? oppgaveark} [Oppgåvearket]
    Eit A4-ark eg hadde fått frå redaktøren i Dagens Nyhende. På arket stod det nokre stikkord, og eit kryssordrutenett.
    {puzzle2 == 0:
        MINIGAME #minigame:puzzle2
    }
    {puzzle2:
        Eg hadde fylt ut heile kryssordet. Løysingsordet var Kikazaru.
    - else:
        Eg stirra på papirarket ei stund før eg gav opp og la det tilbake i lomma.
    }
    
+ {inv ? apeark} [Arket frå apemaleriet]
    Det enkle papirarket innehaldt litt tekst som såg ut til å vera skrive i ein slags kode, og eit kryssordrutenett.
    {puzzle3 == 0:
        MINIGAME #minigame:puzzle3
    }
    {puzzle3:
        Eg hadde fylt ut heile kryssordet. Whittaker ... {|Var det ikkje ei stor liste over etternamn ein stad i dette huset?}
    - else:
        Eg fekk nesten hovudpine av å sjå på dei merkelege bokstavane. Kva slags kode var dette?
    }
+ ->
Lommene mine var tomme. ->->
- ->->

=== testamentet
I denne konvolutten lå testamentet til Theodor Krankelfnaas. Eit testamente som, visstnok, innehaldt ei gåte som leia til ein skatt. #style:narrative
Eg burde levere dette tilbake til fru Krankelfnaas så fort som mogleg, men ...
    ... det skader vel ingen om eg berre tar ein kjapp titt?
+ {not dikt} [Les testamentet] ->begge->
+ {dikt} [Sjå på diktet på side 1] ->dikt->
+ {dikt and (puzzle1 == 0)} [Sjå på gåta på side 2] ->puzzle->
+ [La vera]
- ->->

= begge
Testamentet bestod av to sider. Den første såg ut som eit dikt.
    ->dikt->
Nederst på sida stod det nokre linjer på advokatspråk med liten skrift, sannsynlegvis for at testamentet skulle vera så gyldig som mogleg. Eg studerte teksten grundig nok til å vera heilt sikker på at det ikkje stod noko av interesse der. #style:narrative
Neste side såg ut til å vera sporet fru Krankelfnaas hadde snakka om.
    ->puzzle->
->->

= dikt
Når du leser dette er eg død og borte, akk og ve #style:poem
Og i testamentet ligger vegen til eit skjulested
Målet ditt er evig rikdom, spor er skjult frå topp til bunn
Eitt er skjult på kartet, men dei fleste er på heimleg grunn
Nøklar åtte må du finne, då må mange vegar gås
Når du kjem til porten, vis han at du er ein Krankelfnaas
Ikkje gå i fella; det er lett å velja galen veg
Gå eit steg tilbake, så vil svaret openbare seg
Måtte beste jegar vinne, klok, bestemt og gåtetørst:
Alt eg eiger går til den som løyser siste gåte først
->->

= puzzle
{puzzle1:
    Eg hadde allereie løyst denne gåta, så eg trengte ikkje å lese ho igjen.
    ->->
}
MINIGAME #minigame:puzzle1
{puzzle1:
    Hmm ... Eg var rimeleg sikker på at eg hadde funne eit sett med kartkoordinatar ... og at koordinatane førte til Akersgata i Oslo.
    Eg visste òg at Theodor Krankelfnaas eigde ei avis i Akersgata ...
    Det kunne sjå ut som om det var på tide å avleggja ein visitt til Dagens Nyhende.
    ->->
}
Eg leste raskt gjennom det kryptiske papirarket. Eg var ikkje heilt sikker på kva eg skulle gjera med det.
->->

