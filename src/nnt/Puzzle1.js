import Puzzle from "./Puzzle";

function Puzzle1(props) {
	const {progress, changeVariable} = props;
  return (
	<Puzzle
		answer="akersgata"
		inkVariable="puzzle1"
		hints={[
			'Kva har desse artistane gjort i dei oppgitte årstala? Ser du nokre likdomstrekk?',
			'Første bolk med artistar gir deg tre (X) og ein (Y). Neste bolk med artistar gir deg òg tre (X) og ein (Y). Kan du konvertere den informasjonen til ein stad?',
			'Løysingsordet er eit stadnamn som har blitt nevnt i forteljinga tidlegare. Hugs at du kan opne historieloggen ved å trykke på snakkeboblene øvst på sida.',
		]}
		pdf="./pdf/mixtapes.pdf"
		changeVariable={changeVariable}
		progress={progress}
	>
		<h1>#1: Mixtapes</h1>
		<p><em>Puffy AmiYumi</em> (2004)<br/>
		<em>Metropole Orkest</em> (2010)<br/>
		<em>The Knocks</em> (2016)<br/>
		<em>Gåte</em> (2021)</p>
		<p><em>Wet Wet Wet</em> (1997)<br/>
		<em>Joel Plaskett</em> (2020)<br/>
		<em>King Never</em> (2013)<br/>
		<em>Cold Chisel</em> (1980)</p>
	</Puzzle>
  )
}

export default Puzzle1