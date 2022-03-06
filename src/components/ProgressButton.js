import React from 'react'

function ProgressButton(props) {

	const {currentText, progress, showMenu} = props;

	if ((currentText.choices && currentText.choices.length) || showMenu || currentText.input) {
		return false;
	}

	return (
		<button className="progress-button" onClick={() => progress()}></button>
	)
}

export default ProgressButton