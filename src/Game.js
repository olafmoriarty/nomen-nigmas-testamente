import { useState, useEffect } from 'react';
import { Helmet } from 'react-helmet';
import './css/game.css';
import { Story } from 'inkjs';

import Line from './components/Line';
import ProgressButton from './components/ProgressButton';
import Choices from './components/Choices';
import Portrait from './components/Portrait';
import StoryLog from './components/StoryLog';

import Credits from './components/Credits';
import Minigame from './components/Minigame';
import Background from './components/Background';
import Options from './components/Options';
import LoadSave from './components/LoadSave';
import TopMenu from './components/TopMenu';

function Game(props) {
	const {json, title, characters, locations, credits, minigames} = props;

	const [emptyInkSave, setEmptyInkSave] = useState(false);
	const [inkStory, setInkStory] = useState(false);
	const [currentText, setCurrentText] = useState(false);
	const [showMenu, setShowMenu] = useState(true);
	const [storyLog, setStoryLog] = useState([]);
	const [overlay, setOverlay] = useState(0);
	const [gameObject, setGameObject] = useState({
		textSpeed: 25,
	});

	useEffect(() => {
		const autosave = localStorage.getItem('autosave');
		let autosaveJson = {};
		if (autosave) {
			autosaveJson = JSON.parse(autosave);
			setStoryLog(autosaveJson.storyLog);
			setCurrentText(autosaveJson.storyLog[0]);
			setGameObject(autosaveJson.gameObject);
			setShowMenu(false);
		}

		const ink = new Story(json);
		setEmptyInkSave(ink.state.ToJson());
		if (autosave) {
			ink.state.LoadJson(autosaveJson.inkSave);
		}
		setInkStory(ink);

	}, [json]);

	const loadGame = saveFile => {
		const file = localStorage.getItem(saveFile);
		let json = {};
		if (file) {
			json = JSON.parse(file);
			setStoryLog(json.storyLog);
			setCurrentText(json.storyLog[0]);
			setGameObject(json.gameObject);
			inkStory.state.LoadJson(json.inkSave);
		}
	}

	const spaceToProgress = ev => {
		if (ev.key === ' ' || ev.key === 'Enter') {
			if ((!currentText.choices || !currentText.choices.length) && !currentText.input && !currentText.minigame && !overlay) {
				ev.preventDefault();
				progress();
			}
		}
		else {
		}
	}

	useEffect(() => {
		window.addEventListener('keydown', spaceToProgress);
		return () => {
			window.removeEventListener('keydown', spaceToProgress);
		}
	}, [currentText, overlay]);
	const editGameProperty = (name, value) => {
		let newGameObject = {
			...gameObject,
		};
		newGameObject[name] = value;
		setGameObject(newGameObject);
	}

	const timestamp = () => {
		const pad = number => number.toString().padStart(2, '0');
		const now = new Date();
		return `${pad(now.getDate())}.${pad(now.getMonth() + 1)}.${now.getFullYear()} ${pad(now.getHours())}:${pad(now.getMinutes())}:${pad(now.getSeconds())}`;
	}

	const progress = (tags = []) => {
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
			tags.concat(inkStory.currentTags).forEach(element => {
				const tag = element.split(':');
				if (tag[0] === 'person') {
					if (characters[tag[1]]) {
						textObject[tag[0]] = characters[tag[1]];
					}
					else {
						textObject[tag[0]] = {name: tag[1]};
					}
				}
				else if (tag[0] === 'location') {
					if (locations[tag[1]]) {
						textObject[tag[0]] = locations[tag[1]];
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
			if (!textObject.text && !textObject.completeText && !textObject.minigame) {
				progress(inkStory.currentTags);
			}
			else if (!textObject.minigame) {
				setCurrentText(textObject);

				// If text exists, add it to the story log.
				const newStoryLog = [textObject, ...storyLog];
				setStoryLog(newStoryLog);

				// Autosave the game.
				const saveFile = {
					storyLog: newStoryLog,
					inkSave: inkStory.state.ToJson(),
					gameObject: gameObject,
					timestamp: timestamp(),
					location: textObject.location ? textObject.location : false,
				};
				localStorage.setItem('autosave', JSON.stringify(saveFile));
			}
			else {
				setCurrentText(textObject);
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

			if (tags.length) {
				tags.forEach(element => {
					const tag = element.split(':');
					if (tag[0] === 'person') {
						if (characters[tag[1]]) {
							textObject[tag[0]] = characters[tag[1]];
						}
						else {
							textObject[tag[0]] = {name: tag[1]};
						}
					}
					else if (tag[0] === 'location') {
						if (locations[tag[1]]) {
							textObject[tag[0]] = locations[tag[1]];
						}
						else {
							textObject[tag[0]] = {name: tag[1]};
						}
					}
					else {
						textObject[tag[0]] = tag[1];
	
					}
				});
			}
			setCurrentText(textObject);
		}
	}

	const resetGame = () => {
		inkStory.state.LoadJson(emptyInkSave);
		setCurrentText(false);
		setStoryLog([]);
		setOverlay(0);
		setShowMenu(true);
		localStorage.removeItem('autosave');
	};

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
			{characters ? <Helmet>
				{Object.keys(characters).map(el => {
					if (!characters[el].portrait) {
						return;
					}
					return <link key={el} rel="prefetch" href={characters[el].portrait} as="image" />
				})}
			</Helmet> : false}
			<TopMenu storyLog={storyLog} overlay={overlay} toggleOverlay={toggleOverlay} currentText={currentText} />
			<Background currentText={currentText} />
			<Line currentText={currentText} changeVariable={changeVariable} gameObject={gameObject} />
			<Portrait currentText={currentText} />
			<ProgressButton currentText={currentText} showMenu={showMenu} progress={progress} />
			<Choices choices={currentText.choices} makeChoice={makeChoice} />
			{(showMenu && !overlay) ? <div className="start-menu">
				<h1>{title}</h1>
				{currentText ? <button onClick={() => setShowMenu(false)}>Hald fram</button> : <button onClick={() => progress()}>Start</button>}
			</div> : false}
			{overlay === 'log' ? <StoryLog showStoryLog={true} storyLog={storyLog} /> : false}
			{overlay === 'options' ? <Options gameObject={gameObject} editGameProperty={editGameProperty} resetGame={resetGame} hasSaveData={storyLog.length ? true : false} setOverlay={setOverlay} /> : false}
			{overlay === 'credits' ? <Credits credits={credits} setOverlay={setOverlay} /> : false}
			{overlay === 'save' ? <LoadSave loadGame={loadGame} setOverlay={setOverlay} /> : false}
			<Minigame currentText={currentText} minigames={minigames} progress={progress} changeVariable={changeVariable} gameObject={gameObject} setGameObject={setGameObject} />
		</>
	)
}

export default Game;