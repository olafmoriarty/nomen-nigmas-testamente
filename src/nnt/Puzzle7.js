import Puzzle from "./Puzzle";

function Puzzle7(props) {
	const {progress, changeVariable} = props;
  return (
	<Puzzle
		answer="ensjø"
		inkVariable="puzzle7"
		hints={[
			"All informasjon du trenger for å løyse denne oppgåva er tilgjengeleg på Internett, men ... dette er nok ei oppgåve som det er mykje enklare å løyse dersom du bur ein bestemt stad i landet.",
			"Kva har fem linjer? Fargene som er brukt i oppgåva er ikkje tilfeldig valde.",
			"Stikkorda liknar litt på anagram, men det er noko som mangler ... Kva då?",
			"Kvart stikkord mangler ein bokstav for å vera eit anagram av eit punkt på linja det står ved sidan av. Finn dei manglande bokstavane, set dei saman til eit ord, og gjenta prosessen.",
		]}
		pdf="./pdf/femlinjer.pdf"
		changeVariable={changeVariable}
		progress={progress}
	>
		<h1>#7: Fem linjer</h1>
		<div className="linjer">
			<ul className="linje linje1">
				<li>Hell kolonne</li>
				<li>Eltet klovn</li>
				<li>Amor tusen</li>
				<li>Internatet halta</li>
				<li>Signe tott</li>
				<li>NB yngre</li>
				<li>Notabel krill</li>
				<li>Aknelim</li>
				<li>Blyg kartleser</li>
			</ul>
			<ul className="linje linje2">
				<li>Krimsaka</li>
				<li>Heve ost</li>
				<li>Hel om</li>
				<li>Lakkmekleren</li>
				<li>SMS det</li>
				<li>Be Gro</li>
				<li>Jotunrams</li>
				<li>Tanete inhalator</li>
				<li>Tingsrett</li>
				<li>De uhell</li>
				<li>Aurehud</li>
				<li>Blid gren</li>
				<li>EU surf</li>
			</ul>
			<ul className="linje linje3">
				<li>Bankstreik</li>
				<li>Ja</li>
				<li>Leet molbo</li>
				<li>Hel drue</li>
				<li>Gid LO</li>
				<li>Skåne søye</li>
				<li>Enorm rust</li>
			</ul>
			<ul className="linje linje4">
				<li>Sovner</li>
				<li>Blekkelv</li>
				<li>Nøle</li>
				<li>Or os</li>
				<li>FN norsk regnskap</li>
				<li>Høyhella</li>
				<li>Andel mur</li>
				<li>Tankbiltroll</li>
				<li>Belemre tsar</li>
			</ul>
			<ul className="linje linje5">
				<li>Voll studielån</li>
				<li>Jesu roman</li>
				<li>Haltete tannrota</li>
				<li>Tregt sint</li>
				<li>Gjeteren abort</li>
				<li>Brass cern sprell</li>
				<li>En dyna</li>
				<li>Nøye</li>
				<li>Elsa</li>
				<li>Kønr</li>
				<li>Røsk lik</li>
				<li>Veivet</li>
				<li>Dogru</li>
				<li>SV Tron</li>
				<li>Elvis</li>
			</ul>
		</div>
	</Puzzle>
  )
}

export default Puzzle7;