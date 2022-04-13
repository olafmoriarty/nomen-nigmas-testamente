function ProgressButton(props) {
	const {currentText, progress, showMenu} = props;

	if ((currentText.choices && currentText.choices.length) || showMenu || currentText.input || currentText.minigame) {
		return false;
	}

	return (
		<button className="progress-button" onClick={() => progress()}></button>
	)
}

export default ProgressButton