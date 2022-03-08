import './css/game.css';
import Game from './Game';

function App() {
	const title = 'Nomen Nigmas testamente';

	const characters = {
		'wenche': {
			name: 'Wenche X',
			portrait: "/images/characters/ugly-mess.png",
			color: "#00ff00",
		}
	};

	const json = require('./story.json');
	
	return (
		<Game json={json} title={title} characters={characters} />
	);
}

export default App;