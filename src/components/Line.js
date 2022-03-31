import SetVariable from "./SetVariable";
import {useState, useEffect} from 'react';

function Line(props) {
	const {currentText, changeVariable, gameObject} = props;
	const {textSpeed} = gameObject;
	const [lineIndex, setLineIndex] = useState(-1);
	const [currentTypewriterText, setCurrentTypewriterText] = useState('');

	useEffect(() => {
		let timeout;
		if (textSpeed > 0 && currentText.text && lineIndex > -1 && lineIndex < currentText.text.length) {
			timeout = setTimeout(() => {
				setLineIndex(lineIndex + 1);
			}, textSpeed);
		}
		return () => clearTimeout(timeout);
	}, [lineIndex]);

	useEffect(() => {
		console.log(currentText.text);
		if (currentText.text) {
			setLineIndex(textSpeed ? 0 : currentText.text.length);
			setCurrentTypewriterText(currentText.text);
		}
	}, [currentText.text]);


	if (!currentText || !currentText.text) {
		return false;
	}
	return (
		<div className={`story-line${currentText.input ? ' style-input' : (currentText.style ? ' style-' + currentText.style : '')}`}>
			{currentText.input ? <SetVariable currentText={currentText} changeVariable={changeVariable} /> : <>
				{currentText.person ? <div className="speaker-name" style={currentText.person.color ? {backgroundColor: currentText.person.color} : {}}>{currentText.person.name}</div> : false}
				<div className="text">{currentTypewriterText.substring(0, lineIndex)}</div>
			</>}
		</div>
	)
}

export default Line;