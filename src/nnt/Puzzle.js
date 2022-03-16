import {useState, useRef} from 'react'

function Puzzle(props) {
	const [showForm, setShowForm] = useState(false);
	const [myAnswer, setMyAnswer] = useState("");
	const [inputIsActive, setInputIsActive] = useState(false);
	const [hintsShown, setHintsShown] = useState(0);
	const {answer, inkVariable, hints, children, progress, changeVariable} = props;

	const checkAnswer = e => {
		e.preventDefault();
		if (answer.toUpperCase() === myAnswer.toUpperCase()) {
			console.log(true);
		}
		else {
			console.log(false);
		}
	}

	return (
	<div className="puzzle" data-answer-length={answer.length}>
		{children}

		{hintsShown ? <h2>Hint</h2> : false}
		{hintsShown ? <ol>{hints.slice(0, hintsShown).map((el, index) => <li key={index}>{el}</li>)}</ol> : false}
		{hintsShown < hints.length ? <p><button className="link" onClick={() => setHintsShown(hintsShown + 1)}>{hintsShown ? "Vis eitt hint til" : "Vis hint"}</button></p>
 : false}

		<p className="puzzle-answer-button"><button onClick={() => setShowForm(true)}>Svaret er ...</button></p>
		<p><button className="link" onClick={() => progress()}>Gå tilbake</button></p>
		{showForm ? <form className="puzzle-answer-wrapper" onSubmit={el => checkAnswer(el)}>
			<div className="puzzle-answer" >
				{myAnswer.padEnd(answer.length, " ").split("").map((letter, index) => 
					<div className={`puzzle-answer-letter${index === myAnswer.length && inputIsActive ? ' active' : (answer.charAt(index) === ' ' ? ' space' : (index >= myAnswer.length ? ' unused' : ''))}`} key={index}>{letter.toUpperCase()}</div>
				)}
				<input className="puzzle-answer-input" name="answer" maxLength={answer.length} value={myAnswer} onChange={el => setMyAnswer(el.target.value)} onFocus={() => setInputIsActive(true)} onBlur={() => setInputIsActive(false)} autoComplete="off" />
			</div>
			<p><button type="submit">Sjekk svar</button></p>
		</form> : false}
	</div>
  )
}

export default Puzzle