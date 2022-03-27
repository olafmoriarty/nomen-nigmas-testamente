import './css/game.css';
import Game from './Game';
import Puzzle1 from './nnt/Puzzle1';

function App() {
	const title = 'Nomen Nigmas testamente';

	const characters = {
		'wenche': {
			name: 'Wenche Krankelfnaas',
			portrait: "./images/characters/wenche.png",
		},
		'meg': {
			name: "Meg",
		}
	};

	const locations = {
		'kontoret': {
			name: 'Mitt kontor',
			image: './images/backgrounds/office.png',
		}
	}

	const minigames = {
		puzzle1: <Puzzle1 />,
	};

	const credits = [
		<>
			<h1>Nomen Nigmas testamente</h1>
			<h2>Eit spel av</h2>
			<p>Olaf Moriarty Solstrand</p>
		</>,
		<>
			<h2>Laga med det narrative scriptspråket</h2>
			<p><a href="https://www.inklestudios.com/ink/" target="_blank" rel="noreferrer noopener">Ink</a></p>
			<p className="developed-by">utvikla av inkle</p>
			<h2>Javascript-port</h2>
			<p><a href="https://github.com/y-lohse/inkjs" target="_blank" rel="noreferrer noopener">inkjs</a></p>
			<p className="developed-by">utvikla av Yannick Lohse</p>
		</>,
		<>
			<h2>Ikon</h2>
			<p><a href="https://fontawesome.com/icons/" target="_blank" rel="noreferrer noopener">FontAwesome</a></p>
			<h2>Skrifttypar</h2>
			<p>Share Tech Mono</p>
			<p style={{'fontFamily': 'Shadows Into Light'}}>Shadows Into Light</p>
			<p style={{'fontFamily': 'Garamond'}}>Garamond</p>
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
			locations={locations}
			credits={credits}
			minigames={minigames}
		/>
	);
}

export default App;