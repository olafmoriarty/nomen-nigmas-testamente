function Line(props) {
	const {currentText} = props;
	if (!currentText || !currentText.text) {
		return false;
	}
	return (
		<div className={`story-line${currentText.style ? ' style-' + currentText.style : ''}`}>
			{currentText.person ? <div className="speaker-name">{currentText.person.name}</div> : false}
			<div className="text">{currentText.text}</div>
		</div>
	)
}

export default Line;