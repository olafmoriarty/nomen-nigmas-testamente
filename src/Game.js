import { useState, useEffect } from 'react';
import './css/game.css';
import { Story } from 'inkjs';
import { FontAwesomeIcon as Icon } from '@fortawesome/react-fontawesome';
import { faComments, faFloppyDisk, faRectangleList } from '@fortawesome/free-solid-svg-icons';

import Line from './components/Line';
import ProgressButton from './components/ProgressButton';
import Choices from './components/Choices';
import Portrait from './components/Portrait';
import StoryLog from './components/StoryLog';

// Background images
import office from './images/backgrounds/office.png';
import Credits from './components/Credits';
import Minigame from './components/Minigame';

function Game(props) {
	const {json, title, characters, credits, minigames} = props;

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
				minigame: false,
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
			if (textObject.text === 'BLANK' || textObject.minigame) {
				textObject.text = '';
			}
			setCurrentText(textObject);
			if (!textObject.text && !textObject.minigame) {
				progress();
			}
			else if (!textObject.minigame) {
				// If text exists, add it to the story log.
				const newStoryLog = [textObject, ...storyLog];
				setStoryLog(newStoryLog);
			}
		}
		else if (inkStory.currentChoices.length > 0) {
			if (showMenu) {
				setShowMenu(false);
			}
			const textObject = {
				...currentText,
				minigame: false,
				choices: inkStory.currentChoices,
			}
			setCurrentText(textObject);
		}
	}

	const changeVariable = (name, value, doProgress = true) => {
		inkStory.variablesState[name] = value;
		if (doProgress) {
			progress();
		}
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
				{storyLog.length ? <button onClick={() => toggleOverlay('log')}><Icon icon={faComments} /></button> : false}
				<button onClick={() => toggleOverlay('load-save')}><Icon icon={faFloppyDisk} /></button>
				<button onClick={() => toggleOverlay('credits')}><Icon icon={faRectangleList} /></button>
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
			{overlay === 'credits' ? <Credits credits={credits} setOverlay={setOverlay} /> : false}
			<Minigame currentText={currentText} minigames={minigames} progress={progress} changeVariable={changeVariable} />
		</>
	)

}

export default Game;