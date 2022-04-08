import Puzzle from "./Puzzle";

function Puzzle5(props) {
	const {progress, changeVariable} = props;
  return (
	<Puzzle
		answer="fabaceae"
		inkVariable="puzzle5"
		hints={[
			'La oss starte med byrjinga, ein veldig god stad å starte. Kvar denne gåta var skribla ned er ikkje irrelevant.',
			'Det er noko som mangler på kvar linje. Kva?',
			'Dersom du føler at er på feil veg fordi bokstavane du ender opp med ikkje ser ut til å danne ord, vurder om det kan vera mogleg at dei danner ord på andre språk enn norsk.',
			'Løysingsordet har eit fellestrekk med tittelen på gåta, og temaet som går igjen i sangtekstane er òg eit hint om kva slags gjenstand/vesen dette løysingsordet er.',
		]}
		pdf="./pdf/habahaba.pdf"
		changeVariable={changeVariable}
		progress={progress}
	>

		<h1>#5: Haba haba</h1>
		<p className="handskrift">CCGGGG?ECD | CDEDCDECC | CCGGGG?EG?EE | DCDDCEDCC</p>
		<p className="handskrift">GGFEFG?GCEDC?G | ??GFG?H?DHG?F#G | GGFEFG?GCEDC?G | ??GFG?HCDECDHC</p>
		<p className="handskrift">FEEFEFEFG?GGFEGE | CHGEFG?GGFEGE | FECGA?GCAFCGE | CCHECC?D#CD#FD#DC?E</p>
		<p className="handskrift">GCDEEEDCDD | FEDCCCHCD | FEDCCCHB?C | CH?GGG?HC</p>
		<p className="handskrift">EEEDD??HHHHAAAADA | DDD??HHAAAAGGGG?G | GGGFFEEDDDD????F? | AH?AAH?GH?DG?DE? | H?GFGFEDEGGFED?</p>
		<p className="handskrift">G?CGAHCACG | DG?CAHCD?D | ?F?DG?DCD?CACAG | GC?DGC?D?FG?CDHC</p>
		<p className="handskrift">EEE?FG? | DDDGFEDE | CCCEDEFD | GGCHC</p>
		<p className="handskrift">?GDCGF???FGAG | ?GDCG?DGGAHCC | DGGHAG?GCACDCHG | ?GDCGF?GGAHCC</p>
	</Puzzle>
  )
}

export default Puzzle5;