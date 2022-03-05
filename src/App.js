import { useState, useEffect } from 'react';
import './css/game.css';
import { Story } from 'inkjs';
import Line from './components/Line';
import ProgressButton from './components/ProgressButton';
import Choices from './components/Choices';
import Portrait from './components/Portrait';

// Background images
import mansion from './images/backgrounds/mansion.png';
import newspaper from './images/backgrounds/newspaper.png';
import office from './images/backgrounds/office.png';

// Character portraits
import uglyPerson from './images/characters/ugly-mess.png';

function App() {
	const [inkStory, setInkStory] = useState(false);
	const [currentText, setCurrentText] = useState(false);
	const [showMenu, setShowMenu] = useState(true);

	const tittel = 'Nomen Nigmas testamente';

	const characters = {
		'wenche': {
			name: 'Wenche X',
			portrait: uglyPerson,
			color: "#00ff00",
		}
	};

	useEffect(() => {
		const json = require('./story.json');
		const ink = new Story(json);
		setInkStory(ink);
	}, []);
	
	const progress = () => {
		if (inkStory.canContinue) {
			if (showMenu) {
				setShowMenu(false);
			}
			const text = inkStory.Continue();
			const textObject = {
				...currentText,
				choices: [],
				text: text.trim(),
			}
			inkStory.currentTags.forEach(element => {
				const tag = element.split(':');
				if (tag[0] === 'person') {
					if (characters[tag[1]]) {
						textObject[tag[0]] = characters[tag[1]];
					}
					else {
						textObject[tag[0]] = {name: tag[1]};
					}
				}
				else {
					textObject[tag[0]] = tag[1];

				}
			});
			console.log(textObject);
			setCurrentText(textObject);
			if (!textObject.text) {
				progress();
			}
			console.log(inkStory.state.ToJson());
		}
		else if (inkStory.currentChoices.length > 0) {
			if (showMenu) {
				setShowMenu(false);
			}
			const textObject = {
				...currentText,
				choices: inkStory.currentChoices,
			}
			console.log(textObject.choices);
			setCurrentText(textObject);
		}
	}

	const makeChoice = choice => {
		inkStory.ChooseChoiceIndex(choice);
		progress();
	}

	return (
		<>
			{<div className="background"><img src={office} /></div>}
			<Line currentText={currentText} />
			<Portrait currentText={currentText} />
			<ProgressButton currentText={currentText} showMenu={showMenu} progress={progress} />
			<Choices choices={currentText.choices} makeChoice={makeChoice} />
			{showMenu ? <div className="start-menu">
				<h1>{tittel}</h1>
				<button onClick={() => progress()}>Start</button>
			</div> : false}
		</>
	)
}

export default App