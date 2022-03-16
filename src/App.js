import './css/game.css';
import Game from './Game';
import Puzzle from './nnt/Puzzle';

function App() {
	const title = 'Nomen Nigmas testamente';

	const characters = {
		'wenche': {
			name: 'Wenche X',
			portrait: "/images/characters/ugly-mess.png",
			color: "#00ff00",
		}
	};

	const minigames = {
		puzzle1: <Puzzle answer="akersgata" inkVariable="puzzle1" hints={[
			'Kva har desse artistane gjort i dei oppgitte årstala? Ser du nokre likdomstrekk?',
			'Du har no to grupper med fire svar kvar, der tre av dei er i same format og det fjerde er av same type i begge grupper. Sleng på nokre symbol, så har du eit kjent format ...',
			'Løysingsordet er eit stadnamn som har blitt nevnt i forteljinga tidlegare (hugs at du når som helst kan sjekke historieloggen ved å klikke på dei to snakkeboblene på toppen av skjermen).',
		]}>
			<h1>Oppgåve 1</h1>
			<p><em>Puffy AmiYumi</em> (2004)<br/>
			<em>Metropole Orkest</em> (2010)<br/>
			<em>The Knocks</em> (2016)<br/>
			<em>Gåte</em> (2021)</p>
			<p><em>Wet Wet Wet</em> (1997)<br/>
			<em>Joel Plaskett</em> (2020)<br/>
			<em>King Never</em> (2013)<br/>
			<em>Cold Chisel</em> (1980)</p>
		</Puzzle>,
	};

	const credits = [
		<>
			<h1>Nomen Nigmas testamente</h1>
			<h2>Eit spel av</h2>
			<p>Olaf Moriarty Solstrand</p>
		</>,
		<>
			<h2>Laga med det narrative scriptspråket</h2>
			<p><a href="https://www.inklestudios.com/ink/" target="_blank">Ink</a></p>
			<p className="developed-by">utvikla av inkle</p>
			<h2>Javascript-port</h2>
			<p><a href="https://github.com/y-lohse/inkjs" target="_blank">inkjs</a></p>
			<p className="developed-by">utvikla av Yannick Lohse</p>
		</>,
		<>
		<h2>Karakterportrett laga i</h2>
		<p><a href="https://mochakingup.itch.io/cc2d" target="_blank">Character Creator 2D</a></p>
		<p className="developed-by">utvikla av mochakingup</p>
		<h2>Ikon</h2>
		<p><a href="https://fontawesome.com/icons/" target="_blank">FontAwesome</a></p>
	</>,
	<>
			<h2>Skrifttypar</h2>
			<p>Share Tech Mono</p>
			<p style={{'font-family': 'Shadows Into Light'}}>Shadows Into Light</p>
			<p style={{'font-family': 'Garamond'}}>Garamond</p>
		</>,
		<>
			<p>Takk for at du spilte!</p>
			<p className="developed-by"><em>Olaf 2022</em></p>
		</>
];

	const json = require('./story.json');
	
	return (
		<Game
			json={json} 
			title={title} 
			characters={characters}
			credits={credits}
			minigames={minigames}
		/>
	);
}

export default App;