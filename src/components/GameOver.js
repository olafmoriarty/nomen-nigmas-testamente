import React from 'react'

function GameOver(props) {
	const {resetGame, title, setOverlay} = props;
  return (
	<div className="game-over">
		<p>Takk for at du spilte!</p>
		<p><button onClick={() => resetGame()}>Start spelet på nytt</button></p>
		<p><button onClick={() => setOverlay('save')}>Last inn eit lagra spel</button></p>

	</div>
  )
}

export default GameOver