import {useState} from "react";

function SetVariable(props) {
	const {currentText, changeVariable} = props;

	const [input, setInput] = useState("");

	const updateInput = e => {
		setInput(e.target.value);
	}

	const onSubmit = e => {
		e.preventDefault();
		changeVariable(currentText.var, input);
	}

	if (!currentText || !currentText.input) {
		return false;
	}
	return (
		<form onSubmit={e => onSubmit(e)}>
			<p><label htmlFor="textInput">{currentText.text}</label></p>
			<input type="text" autoFocus className="text-input" id="textInput" value={input} onChange={e => updateInput(e)} />
			<button className="input-submit-button" type="submit">Svar</button>
		</form>
	)
}

export default SetVariable