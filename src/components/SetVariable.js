import {useState} from "react";

function SetVariable(props) {
	const {currentText, changeVariable} = props;

	const [input, setInput] = useState("");

	const updateInput = e => {
		setInput(e.target.value);
		console.log(e.target.value);
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
			<input type="text" className="text-input" value={input} onChange={e => updateInput(e)} />
			<button type="submit" />
		</form>
	)
}

export default SetVariable