import React from 'react'

function Options(props) {
	const {gameObject, editGameProperty} = props;

	return (
		<div className="options">
			<div className="single-setting">
				<p>Teksttempo</p>
				<p><input type="range" min="0" max="100" value={100 - gameObject.textSpeed} onChange={(el) => editGameProperty('textSpeed', 100 - el.target.value)} /></p>
			</div>
			<div className="delete-autosave">
				<h2>Slett autolagra data</h2>
				<div className="single-setting">
				<p>Trykk på denne knappen for å slette autolagra data og starte spelet på nytt. Dette kan ikkje angrast, så ver 100 % sikker på at du har lyst til å starte på nytt før du gjer dette!</p>
				<p><button>Start på nytt</button></p>
				</div>
			</div>
		</div>
	)
}

export default Options;