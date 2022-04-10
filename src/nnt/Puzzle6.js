import Puzzle from "./Puzzle";

function Puzzle6(props) {
	const {progress, changeVariable} = props;
  return (
	<Puzzle
		answer="fibonacci"
		inkVariable="puzzle6"
		hints={[
			'Rebusane gir ord og uttrykk, og antall bokstavar for kvart stikkord verkar å stå i skarpe klammer, men totalt antall bokstavar i rebusen stemmer ikkje med antall ruter ... skal det vera bokstavar i rutene i det heile tatt?',
			'Dei fleste av rebusstikkorda er eintydige og relativt enkle å google (dei tvetydige er som regel bak minusteikn, slik at førre ord hinter om kva ord som skal brukast). For ting som kan skrivast på fleire måtar (t.d. grunnstoffer) er ordlengden i klammer eit hint om kva skriveform du skal velja.',
			'Alle rebusane gir namn på tall, eller stikkord som forbindast med eit tall, som passar inn i rutenettet. Desimaltala er irrasjonale.',
			'Tallrekka i dei rosa rutene (rosa ruter på same linje lesast som eitt samanhengande tal) har eit namn.',
		]}
		pdf="./pdf/1111.pdf"
		changeVariable={changeVariable}
		progress={progress}
	>

		<h1>#6: 1 + 1 = 11</h1>
		<p><img src="./images/puzzles/6-1.png" className="kryssordclue" alt="Framført av Andreassen og Danielsen [5] − Ikkje inn [2] + Forlaget til Siri Pettersen [9] − Vazelina-bassist [5] + Her var Petter Dass kapellan [5] − Blodtype [1] + Grunnlagt av Sosthenes Behn [3]" /></p>
		<p><img className="kryssord" src="./images/puzzles/6-1x.png" alt="Ei rute, fulgt av eit desimalteikn, fulgt av sju ruter til, fulgt av ei ellipse (...). Ruta foran desimalteiknet er rosa." /></p>

		<p><img className="kryssordclue" src="./images/puzzles/6-2.png" alt="Laga av Guido van Rossum [6] − Svensk pronomen [3] + Marknadsplass i greske bystatar [5] + Spor 17 på 'Absolutt ikke Bare Egil Band' [3] + Norsk stillasleverandør, eller engelsk adjektiv relatert til pulverkaffe [7] − Grunnstoff 53 [1]" /></p>
		<p><img className="kryssord" src="./images/puzzles/6-1x.png" alt="Ei rute, fulgt av eit desimalteikn, fulgt av sju ruter til, fulgt av ei ellipse (...). Ruta foran desimalteiknet er rosa." /></p>

		<p><img className="kryssordclue" src="./images/puzzles/6-3.png" alt="Egyptisk solgud [2] + Provinsen der Salvación er hovudstad, eller kallenamn for ein engelsk fotballklubb [4] + Fellestrekk for forfattarane bak Svend Foyn, Jonas Wergeland og Arn Magnusson [3] + Serie av Cathy Verney [4] + ICAO-koden til Numbulwar [4] + Bandet bak The night begins to shine [3]" /></p>
		<p><img className="kryssord" src="./images/puzzles/6-3x.png" alt="Fire ruter, den tredje er rosa." /></p>

		<p><img className="kryssordclue" src="./images/puzzles/6-4.png" alt="Landsby i Bellver de Cerdanya [2]" /></p>
		<p><img className="kryssord" src="./images/puzzles/6-1x.png" alt="Ei rute, fulgt av eit desimalteikn, fulgt av sju ruter til, fulgt av ei ellipse (...). Ruta foran desimalteiknet er rosa." /></p>

		<p><img className="kryssordclue" src="./images/puzzles/6-5.png" alt="Det engelske namnet på Formicidae [3] + Bistro i Valkendorfsgaten 1B [7] − Kategorien 'Sterkt truet' på Norsk rødliste for arter [2] + Mesterdetektiv i Death Note-serien [1] + 23 meter høy søyle i Tyskland hvor Secundinii-familien er gravlagt [4] + Zelda Spellman-skodespelar, eller Tårnfrid-skodespelar [4] + Palindromisk synonym for relinger [6]" /></p>
		<p><img className="kryssord" src="./images/puzzles/6-5x.png" alt="Sju ruter, den første er rosa." /></p>

		<p><img className="kryssordclue" src="./images/puzzles/6-6.png" alt="Kjent operahus, eller tredje stavelse i norsk universitet [3] + Heimlandet til Paul David Hewson, på landets eiget språk, men baklengs [4] + Pseudonym for Camillo Almici [2] + Utviklingsforstyrrelse som særlig påvirker kommunikasjon og evnen til sosialt samspill [7] − Ferris, Godde, Rogers, Tapley og Murphy [2] + Maskert deltakar i Virtue's Last Reward [1] + Optimist fra Tønsberg sang om mange sånne i 1978 [3]" /></p>
		<p><img className="kryssord" src="./images/puzzles/6-6x.png" alt="Fire ruter, den andre er rosa." /></p>

		<p><img className="kryssordclue" src="./images/puzzles/6-7.png" alt="Grunnstoff 19 [1] + Fremkomstmiddel (uønska i Mosseveien) [6] − Slovakia (ISO 3166) [2] + Norsk proposisjon, eller engelsk pronomen [1] + Type nøtt som benyttes av konge spilt av Graham Chapman [5]" /></p>
		<p><img className="kryssord" src="./images/puzzles/6-7x.png" alt="Åtte ruter, den andre og den sjette er rosa." /></p>

		<p><img className="kryssordclue" src="./images/puzzles/6-8.png" alt="Traktatsfestet statsforbund med 27 nasjonalstater [2] + Tettsted i Trøndelag der Tore var på låvedans [3] + Huset til Equus ferus caballus [5]" /></p>
		<p><img className="kryssord" src="./images/puzzles/6-8x.png" alt="Ei rute, fulgt av eit desimalteikn, fulgt av sju ruter til, fulgt av ei ellipse (...). Ruta foran desimalteiknet OG andre rute etter desimalteiknet er rosa." /></p>

	</Puzzle>
  )
}

export default Puzzle6;