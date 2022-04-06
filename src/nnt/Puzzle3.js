import Puzzle from "./Puzzle";

function Puzzle3(props) {
	const {progress, changeVariable} = props;
  return (
	<Puzzle
		answer="whittaker"
		inkVariable="puzzle3"
		hints={[
			'Dette var jo berre rot. Er det noko som helst i oppgåveteksten som kan hinte om kva slags kode dette er skrive i?',
			'Som i oppgåve 2 kan du gå ut frå at dersom du ser eit tema gå igjen i fleire av oppgåvene, gjelder det sannsynlegvis for fleire. Det vil òg gjera det lettare å finne svar på dei oppgåvene som er litt tvetydige (spesielt nummer 7!).',
			'Ordet som dukkar opp i dei rosa rutene ser ikkje umiddelbart ut som eit ord. Kan dei òg vera skrive i ein kode? Hvilken? Start med den mest logiske og sjå om han funkar.',
		]}
		pdf="./pdf/gevfxnvqrxnsbov.pdf"
		changeVariable={changeVariable}
		progress={progress}
	>
		<h1>#3: Gevfxnvqrxnsbov</h1>
		<ol>
			<li>Znffrzbeqre seå Pnzc Pelfgny Ynxr</li>
			<li>Qrggr fcryrg fgnegne v Inhyg 13</li>
			<li>Fxbqrfcryne v GI-frevra Ubhfr</li>
			<li>Ub fcrygr Wraan Evax</li>
			<li>Znatn ni Gnxnb Fnvgb</li>
			<li>13-fvsen obxahzzre</li>
			<li>Ebzregny</li>
			<li>Grggfgrq v Ølre</li>
			<li>Xbzznaqøe cå Ncbyyb 13</li>
		</ol>
		<p><img src="./images/puzzles/puzzle3.png" className="kryssord" alt="Kryssord med ni rader. Første rad: To ord, 5 + 8 bokstavar, første rute er rosa. Andre rad: 7 bokstavar, sjette rute er rosa. Tredje rad: To ord, 6 + 5 bokstavar, fjerde rute i første ord er rosa. Fjerde rad: To ord, 8 + 6 bokstavar, første rute i andre ord er rosa. Femte rad: To ord, 5 + 2 bokstavar, fjerde rute i første ord er rosa. Sjette rad: Fire ruter, fjerde rute er rosa. Sjuande rad: Fire ruter, første rute er rosa. Åttande rad: Sju bokstavar, andre rute er rosa. Niande rad: To ord, 3 + 6 bokstavar, fjerde bokstav i andre ord er rosa." /></p>
	</Puzzle>
  )
}

export default Puzzle3;