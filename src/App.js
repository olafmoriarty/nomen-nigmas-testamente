import './css/game.css';
import Game from './Game';
import Puzzle1 from './nnt/Puzzle1';
import Puzzle2 from './nnt/Puzzle2';
import Puzzle3 from './nnt/Puzzle3';
import Puzzle4 from './nnt/Puzzle4';

function App() {
	const title = 'Nomen Nigmas testamente';

	const characters = {
		'wenche': {
			name: 'Wenche Krankelfnaas',
			portrait: "./images/characters/wenche.png",
		},
		'meg': {
			name: "Meg",
		},
		'resepsjonisten': {
			name: 'Resepsjonisten',
			portrait: "./images/characters/quinn.png",
		},
		'katrina': {
			name: 'Redaktøren',
			portrait: "./images/characters/katrina.png",
		},
		'twist': {
			name: 'Politimannen',
			portrait: "./images/characters/twist.png",
		},
		'butler': {
			name: 'Butleren',
			portrait: "./images/characters/butler.png",
		},
		'astrid': {
			name: 'Astrid Isabella',
			portrait: "./images/characters/astridisabella.png",
		},
	};

	const locations = {
		'kontoret': {
			name: 'Mitt kontor',
			image: './images/backgrounds/office.png',
		},
		'avisa': {
			name: 'Dagens Nyhende',
			image: './images/backgrounds/avisa.png',
		},
		'villaen': {
			name: 'Slott Krankelfnaas',
			image: './images/backgrounds/mansion.png',
		},
		'theodorskontor': {
			name: 'Theodor Krankelfnaas\' kontor',
			image: './images/backgrounds/theodorskontor.png',
		},
		'biblioteket': {
			name: 'Biblioteket',
			image: './images/backgrounds/bibliotek.png',
		},
		'hagen': {
			name: 'Hagen',
			image: './images/backgrounds/hagen.png',
		},
		'daglegstua': {
			name: 'Daglegstua',
			image: './images/backgrounds/daglegstua.png',
		},
		'kjelleren': {
			name: 'Kjelleren',
			image: './images/backgrounds/kjeller.png',
		},
	}

	const minigames = {
		puzzle1: <Puzzle1 />,
		puzzle2: <Puzzle2 />,
		puzzle3: <Puzzle3 />,
		puzzle4: <Puzzle4 />,
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
			<h2>Bakgrunnsbilete</h2>

			<h3>Mitt kontor</h3>
			<p><a href="https://www.shutterstock.com/nb/image-illustration/3d-rendering-old-american-film-noir-123996652">Gehrke / Shutterstock.com</a></p> {/* Mitt kontor */}

			<h3>Avisredaksjonen</h3>
			<p><a href="https://www.istockphoto.com/photo/business-team-working-at-desks-in-modern-open-plan-office-gm1137070219-303064916">monkeybusinessimages / iStockPhoto.com</a></p>

		</>,
		<>
			<h3>Villaen - eksteriør</h3>
			<p><a href="https://www.istockphoto.com/photo/elizabethan-manor-house-in-the-cotswolds-oxfordshire-england-gm181875867-23857929">stevegeer / iStockPhoto.com</a></p>

			<h3>Biblioteket</h3>
			<p><a href="https://www.istockphoto.com/photo/bookshelves-in-the-library-with-old-books-3d-render-gm1180993120-331056751">Brankospejs / iStockPhoto.com</a></p>

			<h3>Daglegstua</h3>
			<p><a href="https://www.istockphoto.com/photo/spacious-living-room-gm105627194-12375801">shippee / iStockPhoto.com</a></p>
		</>,
		<>
			<h3>Theodors kontor</h3>
			<p><a href="https://www.shutterstock.com/nb/image-illustration/classic-style-directors-office-3d-rendering-1234299031">Slavun / Shutterstock.com</a></p>

			<h3>Hagen</h3>
			<p><a href="https://www.istockphoto.com/photo/garden-flowers-xxxl-gm157481806-9404816">Lya_Cattel / iStockPhoto.com</a></p>

			<h3>Kjelleren</h3>
			<p><a href="https://www.shutterstock.com/nb/image-illustration/scary-endless-medieval-catacombs-torches-mystical-1940646100">Design Projects / Shutterstock.com</a></p> {/* Katakomber */}
		</>,
		<>
			<h2>Bildereferansar figurportrett</h2>
			<h3>Wenche Krankelfnaas</h3>
			<p><a href="https://www.pexels.com/photo/woman-in-gray-blazer-standing-near-green-plant-with-a-serious-look-5717632/">Tima Miroshnichenko / Pexels.com</a></p>
			<h3>Quinn (resepsjonisten)</h3>
			<p><a href="https://www.shutterstock.com/nb/image-photo/young-african-american-girl-wearing-casual-1933320524">Krakenimages.com / Shutterstock.com</a></p> {/* Resepsjonisten */}
			<h3>Katrina (redaktøren)</h3>
			<p><a href="https://www.shutterstock.com/nb/image-photo/portrait-serious-confident-mature-female-politician-2065717184">Pressmaster / Shutterstock.com</a></p> {/* Redaktøren */}
		</>,
		<>
			<h3>Knut (butleren)</h3>
			<p><a href="https://www.shutterstock.com/nb/image-photo/close-portrait-fashionable-trendy-elegant-wealthy-1278843670">UfaBizPhoto / Shutterstock.com</a></p> {/* Butleren */}
			<h3>Astrid Isabella Krankelfnaas</h3>
			<p><a href="https://www.shutterstock.com/nb/image-photo/photo-self-confident-student-long-ginger-1354473620">WAYHOME studio / Shutterstock.com</a></p> {/* Astrid Isabella */}
			<h3>Twist (politimannen)</h3>
			<p><a href="https://www.shutterstock.com/nb/image-photo/studio-portrait-male-businessman-gray-coat-1831157218">Peyker / Shutterstock.com</a></p>
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