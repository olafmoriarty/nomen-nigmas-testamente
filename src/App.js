import Game from './Game';
import puzzles from './nnt/puzzles';
import rulletekst from './nnt/rulletekst';

function App() {
	const title = 'Nomen Nigmas testamente';

	const json = require('./story.json');
	const characters = require('./nnt/figurar.json');
	const locations = require('./nnt/rom.json');
	const credits = rulletekst();
	const minigames = puzzles();
	
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