import './css/game.css';
import Game from './Game';
import Puzzle1 from './nnt/Puzzle1';

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