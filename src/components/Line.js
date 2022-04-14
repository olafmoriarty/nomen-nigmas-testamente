import SetVariable from "./SetVariable";
import {useState, useEffect} from 'react';

function Line(props) {
	const {currentText, changeVariable, gameObject, isTyping, setIsTyping} = props;
	const {textSpeed} = gameObject;
	const [lineIndex, setLineIndex] = useState(-1);
	const [displayText, setDisplayText] = useState('');

	useEffect(() => {
		let timeout;
		if (textSpeed > 0 && currentText.text && lineIndex > -1 && lineIndex < currentText.text.length) {
			timeout = setTimeout(() => {
				setDisplayText(currentText.text.substring(0, lineIndex + 1));
				setLineIndex(lineIndex + 1);
			}, textSpeed);
		}
		else {
			setIsTyping(false);
			setLineIndex(-1);
			setDisplayText(currentText.text);
		}
		return () => clearTimeout(timeout);
	}, [lineIndex]);

	useEffect(() => {
		if (currentText.text) {
			if (textSpeed) {
				setIsTyping(true);
				setDisplayText('');
			}
			setLineIndex(textSpeed ? 0 : currentText.text.length);
		}
	}, [currentText.text]);

	useEffect(() => {
		if (isTyping === false) {
			setLineIndex(-1);
			setDisplayText(currentText.text);
		}
	}, [isTyping]);

	if (!currentText || !currentText.text) {
		return false;
	}
	return (
		<div className={`story-line${currentText.input ? ' style-input' : (currentText.style ? ' style-' + currentText.style : '')}${currentText.choices && currentText.choices.length ? ' has-options' : ''}`}>
			{currentText.input ? <SetVariable currentText={currentText} changeVariable={changeVariable} /> : <>
				{currentText.person ? <div className="speaker-name" style={currentText.person.color ? {backgroundColor: currentText.person.color} : {}}>{currentText.person.name}</div> : false}
				<div className="text">{displayText}</div>
			</>}
		</div>
	)
}

export default Line;