import {useState, useEffect} from 'react'

function Choices(props) {
	const {choices, makeChoice} = props;
	const [activeChoice, setActiveChoice] = useState(0);

	const keyEventsChoices = ev => {
		if (!choices || !choices.length) {
			return;
		}
		if (ev.key === 'ArrowUp') {
			let newValue = activeChoice - 1;
			if (newValue < 0) {
				newValue += choices.length;
			}
			setActiveChoice(newValue);
		}
		if (ev.key === 'ArrowDown') {
			setActiveChoice((activeChoice + 1) % choices.length);
		}
		if (ev.key.match(/[1-9]/) && parseInt(ev.key) <= choices.length) {
			setActiveChoice(parseInt(ev.key) - 1);
		}
		if ((ev.key === ' ' || ev.key === 'Enter') && activeChoice >= 0 && activeChoice < choices.length) {
			makeChoice(activeChoice);
		}
	}

	useEffect(() => {
		setActiveChoice(0);
	}, [choices]);

	useEffect(() => {
		window.addEventListener('keydown', keyEventsChoices);
		return () => {
			window.removeEventListener('keydown', keyEventsChoices);
		}
	}, [choices, activeChoice]);

	if (!choices || !choices.length) {
		return false;
	}
	return (
		<div className="choices-wrapper">
			<div className="choices">
				{choices.map((el, index) => <button key={index} className={`option${index === activeChoice ? ' selected' : ''}`} onClick={() => makeChoice(index)}>{el.text}</button>)}
			</div>
		</div>
	)
}

export default Choices;