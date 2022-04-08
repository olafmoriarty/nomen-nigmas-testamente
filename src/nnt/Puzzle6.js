import Puzzle from "./Puzzle";

function Puzzle6(props) {
	const {progress, changeVariable} = props;
  return (
	<Puzzle
		answer="fibonacci"
		inkVariable="puzzle6"
		hints={[
		]}
		pdf="./pdf/1111.pdf"
		changeVariable={changeVariable}
		progress={progress}
	>

		<h1>#6: 1 + 1 = 11</h1>
		<p className="kryssordclue"><img src="./images/puzzles/6-1.png" alt="Framført av Andreassen og Danielsen [5] − Ikkje inn [2] + Forlaget til Siri Pettersen [9] − Vazelina-bassist [5] + Her var Petter Dass kapellan [5] − Blodtype [1] + Grunnlagt av Sosthenes Behn [3]" /></p>
		<p className="kryssord"><img src="./images/puzzles/6-1x.png" alt="Ei rute, fulgt av eit desimalteikn, fulgt av sju ruter til, fulgt av ei ellipse (...). Ruta foran desimalteiknet er rosa." /></p>

		<p className="kryssordclue"><img src="./images/puzzles/6-2.png" alt="Laga av Guido van Rossum [6] − Svensk pronomen [3] + Marknadsplass i greske bystatar [5] + Spor 17 på 'Absolutt ikke Bare Egil Band' [3] + Norsk stillasleverandør, eller engelsk adjektiv relatert til pulverkaffe [7] − Grunnstoff 53 [1]" /></p>
		<p className="kryssord"><img src="./images/puzzles/6-1x.png" alt="Ei rute, fulgt av eit desimalteikn, fulgt av sju ruter til, fulgt av ei ellipse (...). Ruta foran desimalteiknet er rosa." /></p>

		<p className="kryssordclue"><img src="./images/puzzles/6-3.png" alt="Egyptisk solgud [2] + Provinsen der Salvación er hovudstad, eller kallenamn for ein engelsk fotballklubb [4] + Fellestrekk for forfattarane bak Svend Foyn, Jonas Wergeland og Arn Magnusson [3] + Serie av Cathy Verney [4] + ICAO-koden til Numbulwar [4] + Bandet bak The night begins to shine [3]" /></p>
		<p className="kryssord"><img src="./images/puzzles/6-3x.png" alt="Fire ruter, den tredje er rosa." /></p>

		<p className="kryssordclue"><img src="./images/puzzles/6-4.png" alt="Landsby i Bellver de Cerdanya [2]" /></p>
		<p className="kryssord"><img src="./images/puzzles/6-1x.png" alt="Ei rute, fulgt av eit desimalteikn, fulgt av sju ruter til, fulgt av ei ellipse (...). Ruta foran desimalteiknet er rosa." /></p>

		<p className="kryssordclue"><img src="./images/puzzles/6-5.png" alt="Det engelske namnet på Formicidae [3] + Bistro i Valkendorfsgaten 1B [7] − Kategorien 'Sterkt truet' på Norsk rødliste for arter [2] + Mesterdetektiv i Death Note-serien [1] + 23 meter høy søyle i Tyskland hvor Secundinii-familien er gravlagt [4] + Zelda Spellman-skodespelar, eller Tårnfrid-skodespelar [4] + Palindromisk synonym for relinger [6]" /></p>
		<p className="kryssord"><img src="./images/puzzles/6-5x.png" alt="Sju ruter, den første er rosa." /></p>

		<p className="kryssordclue"><img src="./images/puzzles/6-6.png" alt="" /></p>
		<p className="kryssord"><img src="./images/puzzles/6-6x.png" alt="Fire ruter, den andre er rosa." /></p>

		<p className="kryssordclue"><img src="./images/puzzles/6-7.png" alt="" /></p>
		<p className="kryssord"><img src="./images/puzzles/6-7x.png" alt="Åtte ruter, den andre og den sjette er rosa." /></p>

		<p className="kryssordclue"><img src="./images/puzzles/6-8.png" alt="" /></p>
		<p className="kryssord"><img src="./images/puzzles/6-8x.png" alt="Ei rute, fulgt av eit desimalteikn, fulgt av sju ruter til, fulgt av ei ellipse (...). Ruta foran desimalteiknet OG andre rute etter desimalteiknet er rosa." /></p>

	</Puzzle>
  )
}

export default Puzzle6;