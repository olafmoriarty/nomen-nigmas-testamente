import Puzzle from "./Puzzle";

function Puzzle8(props) {
	const {progress, changeVariable} = props;
  return (
	<Puzzle
		answer="mister rogers"
		inkVariable="puzzle8"
		hints={[
			'Du har ikkje fått ei liste over kva ord du skal leite etter, men det bør vera lett å finne nokre av orda som er skjult i rutenettet. Finn ut kva dei har felles, så blir det enklare å finne resten.',
			'Du skal totalt finne 26 karakterar i rutenettet. Desse 26 karakterane deltok i eit medieprodukt som blei utgitt i 2001. Orda kan overlappe kvarandre og vera vannrett, loddrett og diagonale.',
			'Bokstavane som står igjen når du har stryke over alle dei du ikkje brukte, dannar eit spørsmål. Finn svaret på det spørsmålet, og du er i mål.'

		]}
		pdf="./pdf/endgame.pdf"
		changeVariable={changeVariable}
		progress={progress}
	>
		<h1>#8: Endgame</h1>
		<p><img src="./images/puzzles/endgame.png" className="kryssord" alt="" /></p>
	</Puzzle>
  )
}

export default Puzzle8;