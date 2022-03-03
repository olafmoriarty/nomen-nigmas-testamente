import React from 'react'

function Choices(props) {

	const {choices, makeChoice} = props;
	if (!choices || !choices.length) {
		return false;
	}
	return (
		<div className="choices-wrapper">
			<div className="choices">
				{choices.map((el, index) => <button key={index} className="option" onClick={() => makeChoice(index)}>{el.text}</button>)}
			</div>
		</div>
	)
}

export default Choices;