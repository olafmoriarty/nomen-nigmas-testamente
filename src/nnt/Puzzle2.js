import Puzzle from "./Puzzle";

function Puzzle2(props) {
	const {progress, changeVariable} = props;
  return (
	<Puzzle
		answer="kikazaru"
		inkVariable="puzzle2"
		hints={[
			'Dei åtte orda du skal fram til har ein ting felles, og denne tingen er utelatt frå stikkordteksten. Men om du legg merke til at eit par av løysingsorda har ein veldig konkret ting felles, kan du gå ut frå at det gjelder alle dei andre òg.',
			'Halvparten av referansene er frå Disney-filmar, to er frå 30-talsfilmar, ein er sørlending og den siste bør det vera enkelt å google seg til.',
			'Løysingsordet er eit medlem av ein kjent trio.',
		]}
		pdf="./pdf/downthestreet.pdf"
		changeVariable={changeVariable}
		progress={progress}
	>
		<h1>#2: Walkin' down the street</h1>
		<ol>
			<li>Han vaks opp på ei øy i Det indiske hav og blei kjent som klatrer i New York</li>
			<li>Vi kjenner'n som TV-sjarmør</li>
			<li>Udød pirat oppkalt etter utstøtt kaptein</li>
			<li>Arabisk lommetyv som liker epler</li>
			<li>I dette landet kan dei fly</li>
			<li>Spilte i filmen <em>Outbreak 2: The Virus Takes Manhattan</em></li>
			<li>Kongeleg Mjuzi</li>
			<li>Monark over Bandar-log</li>
		</ol>
		<p><img src="./images/puzzles/downthestreet.png" className="kryssord" alt="Kryssord med åtte rader. Første rad: Fire bokstaver, første rute er rosa. Andre rad: Seks bokstaver, fjerde rute er rosa. Tredje rad: Fire bokstaver, fjerde rute er rosa. Fjerde rad: Tre bokstaver, første rute er rosa. Femte rad: To bokstaver, andre rute er rosa. Sjette rad: Seks bokstaver, andre rute er rosa. Sjuende rad: Seks bokstaver, første rute er rosa. Åttende rad: Fem bokstaver, tredje rute er rosa." /></p>
	</Puzzle>
  )
}

export default Puzzle2;