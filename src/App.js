import { useState, useEffect } from 'react';
import './css/game.css';
import { Story } from 'inkjs';

function App() {
	const [inkStory, setInkStory] = useState(false);
	const [currentText, setCurrentText] = useState(false);

	useEffect(() => {
		const json = require('./story.json');
		const ink = new Story(json);
		setInkStory(ink);
	}, []);
	
	const progress = () => {
		if (inkStory.canContinue) {
			const text = inkStory.Continue();
			const textObject = {
				...currentText,
				choices: [],
				text: text,
			}
			inkStory.currentTags.forEach(element => {
				const tag = element.split(':');
				textObject[tag[0]] = tag[1];
			});
			console.log(textObject);
			setCurrentText(textObject);
		}
		else if (inkStory.currentChoices.length > 0) {
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
			{currentText.text ? <div className="story-line">
				{currentText.person ? <div className="speaker-name">{currentText.person}</div> : false}
				<div className="text">{currentText.text}</div>
			</div> : false}
			{(!currentText.choices || !currentText.choices.length) ? <button className="progress-button" onClick={() => progress()}></button> : false}
			{(currentText.choices && currentText.choices.length) ? <div className="choices">
				{currentText.choices.map((el, index) => <button key={index} className="option" onClick={() => makeChoice(index)}>{el.text}</button>)}
			</div> : false}
		</>
	)
}

export default App