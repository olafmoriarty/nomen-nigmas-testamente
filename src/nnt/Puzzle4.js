import Puzzle from "./Puzzle";

function Puzzle4(props) {
	const {progress, changeVariable} = props;
  return (
	<Puzzle
		answer="jaja ding dong"
		inkVariable="puzzle4"
		hints={[
			'Det følast ikkje som om dette er eitt samanhengande dikt. Kan versene vera henta frå fleire ulike verk? Har desse verka isåfall noko felles?',
			'Ordlyden er litt snodig av og til, som om denne teksten er oversatt til norsk frå eit anna språk. Men hvilket? Eller ... hvilke?',
			'Enkelte av desse formuleringane verkar kanskje litt kjente. Hvis ikkje er det enkelte ord i teksten som er lettare å google enn andre, til dømes eitt i nest siste avsnitt.',
			'Verken titlane på verka eller namnet på utøveren passer inn i rutenettet. Er det noko anna ved dei tolv tekstane som passar inn i rutenettet, som kven eller kva desse tekstane representerer?',
		]}
		pdf="./pdf/deiveitikkje.pdf"
		changeVariable={changeVariable}
		progress={progress}
	>

		<h1>#4: Dei veit ikkje kva eg snakkar om</h1>
		<p className="diktbok">Kom til meg, kom til meg i kveld. Åh Gud, eg trenger deg, uansett. Beibi, eg vil berre vera, vera rundt deg heile tida. Åh Gud, eg trenger deg, åh.</p>
		<p className="diktbok">Når framande kjem, kjem dei til huset ditt. Dei dreper dykk alle og seier "Vi er ikkje skyldige, ikkje skyldige".</p>
		<p className="diktbok">Han spelte heile dagar på pianoet sitt. Han spelte klassisk musikk med noteark. Han spelte som ein ekte pianist - Mozart, Chopin, Liszt. Eg har funne ein ny sang han kan spele.</p>
		<p className="diktbok">Eg kan ikkje lukke auga. Den tomme senga jagar søvnen bort. Og livet mitt smeltar bort, og det forsvinn raskt, på under eit sekund.</p>
		<p className="diktbok">Eit knust hjarte er alt som er igjen. Eg fiksar framleis alle sprekkene. Mista eit par bitar då eg bar det, bar det, bar det heim.</p>
		<p className="diktbok">Vaknar i ruinane. Går over glaset. Naboane seier at vi er trøbbel. Vel, den tida er over. Tittar frå speilet - nei, det er ikkje meg. Den framande kjem nærare, kven kan denne personen vera.</p>
		<p className="diktbok">Eg gjekk kvar som helst for deg. Eg fiksa til og med håret mitt for deg. Eg kjøpte nytt undertøy, det er blått, og eg brukte det her om dagen.</p>
		<p className="diktbok">Om nokon nokon gong undrar om meg, fortel dei at eg har levd utelukkande for å elske deg. Før deg eksisterte eg berre, oppbrukt og med ingenting igjen å gi.</p>
		<p className="diktbok">Himmelen er raud i natt. Vi er på kanten i natt. Ingen stjerneskudd som leiar oss. Auge for auge, kvifor rive kvarandre frå kvarandre? Fortel meg kvifor, kvifor gjer vi det så vanskeleg? Sjå på oss no, vi har berre oss sjølv å skulde. Det er ein skam.</p>
		<p className="diktbok">Kjærleik, skin eit lys inn i kvart hjørne av hjartet mitt. La kjærleikslyset bære, la kjærleikslyset bære. Lys opp magien i kvar vesle del. La kjærleiken skine eit lys i kvart hjørne av hjarta våre.</p>
		<p className="diktbok">Englane er forkrøpla på denne syndaranes natt. Tapt er lamma utan leiande lys. Veggane fell som torden, steinane skal til å rulle. Det er arockalypsen, blottlegg sjela di.</p>
		<p className="diktbok">Ikkje fortel gudane at eg har etterlatt meg eit rot. Eg kan ikkje gjera om det som har blitt gjort. La oss løpe i skjul. Kva om eg er den einaste helten igjen? Du bør fyre av pistolen din ein gong og for alltid.</p>

		<p><img src="./images/puzzles/deiveitikkje.png" className="kryssord" alt="Kryssord med tolv rader. Første rad: 12 ruter, den tiende er rosa. Andre rad: Sju ruter, den fjerde er rosa. Tredje rad: Ti ruter, den første er rosa. Fjerde rad: Seks ruter, den siste er rosa. Femte rad: Ni ruter, den siste er rosa. Sjette rad: Ni ruter, den sjuande er rosa.Sjuande rad: Åtte ruter, den sjuande er rosa. Åttande rad: Åtte ruter, den sjette er rosa. Niande rad: Sju ruter, den første er rosa. Tiande rad: Tretten ruter, den tredje er rosa. Ellevte rad: Sju ruter, den tredje er rosa. Tolvte rad: Sju ruter, den sjette er rosa." /></p>
	</Puzzle>
  )
}

export default Puzzle4;