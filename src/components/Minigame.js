import {cloneElement} from 'react';

function Minigame(props) {
	const {currentText, minigames, progress, changeVariable} = props;
	if (!currentText || !currentText.minigame || !minigames || !minigames[currentText.minigame]) {
		return false;
	}

	const minigameToDisplay = cloneElement(minigames[currentText.minigame], {progress: progress, changeVariable: changeVariable});

	return (
		<div className="minigame">
			{minigameToDisplay}
		</div>
	)
}

export default Minigame;