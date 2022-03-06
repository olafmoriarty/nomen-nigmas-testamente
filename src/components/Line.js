import SetVariable from "./SetVariable";

function Line(props) {
	const {currentText, changeVariable} = props;
	if (!currentText || !currentText.text) {
		return false;
	}
	return (
		<div className={`story-line${currentText.style ? ' style-' + currentText.style : ''}`}>
			{currentText.person ? <div className="speaker-name" style={currentText.person.color ? {backgroundColor: currentText.person.color} : {}}>{currentText.person.name}</div> : false}
			<div className="text">{currentText.text}</div>
			<SetVariable currentText={currentText} changeVariable={changeVariable} />
		</div>
	)
}

export default Line;