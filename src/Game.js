import { useState, useEffect } from 'react';
import './css/game.css';
import { Story } from 'inkjs';
import { FontAwesomeIcon as Icon } from '@fortawesome/react-fontawesome';
import { faComments } from '@fortawesome/free-solid-svg-icons';

import Line from './components/Line';
import ProgressButton from './components/ProgressButton';
import Choices from './components/Choices';
import Portrait from './components/Portrait';
import StoryLog from './components/StoryLog';

// Background images
import office from './images/backgrounds/office.png';

function Game(props) {
	const {json, title, characters} = props;

	const [inkStory, setInkStory] = useState(false);
	const [currentText, setCurrentText] = useState(false);
	const [showMenu, setShowMenu] = useState(true);
	const [storyLog, setStoryLog] = useState([]);
	const [overlay, setOverlay] = useState(0);

	useEffect(() => {
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
				input: false,
				var: '',
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
			setCurrentText(textObject);
			if (!textObject.text || textObject.text === 'BLANK') {
				progress();
			}
			else {
				// If text exists, add it to the story log.
				const newStoryLog = [textObject, ...storyLog];
				setStoryLog(newStoryLog);
			}
			// console.log(inkStory.state.ToJson());
		}
		else if (inkStory.currentChoices.length > 0) {
			if (showMenu) {
				setShowMenu(false);
			}
			const textObject = {
				...currentText,
				choices: inkStory.currentChoices,
			}
			setCurrentText(textObject);
		}
	}

	const changeVariable = (name, value) => {
		inkStory.variablesState[name] = value;
		progress();
	}

	const makeChoice = choice => {
		inkStory.ChooseChoiceIndex(choice);
		progress();
	}

	const toggleOverlay = (newOverlay) => {
		if (overlay === newOverlay) {
			setOverlay(0);
		}
		else {
			setOverlay(newOverlay);
		}
	}

	return (
		<>
			<div className="top-menu">
				<button onClick={() => toggleOverlay('log')}><Icon icon={faComments} /></button>
			</div>
			{<div className="background"><img src={office} alt="" /></div>}
			<Line currentText={currentText} changeVariable={changeVariable} />
			<Portrait currentText={currentText} />
			<ProgressButton currentText={currentText} showMenu={showMenu} progress={progress} />
			<Choices choices={currentText.choices} makeChoice={makeChoice} />
			{showMenu ? <div className="start-menu">
				<h1>{title}</h1>
				<button onClick={() => progress()}>Start</button>
			</div> : false}
			{overlay === 'log' ? <StoryLog showStoryLog={true} storyLog={storyLog} /> : false}
		</>
	)

}

export default Game;