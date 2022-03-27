import {useEffect} from 'react';
import { FontAwesomeIcon as Icon } from '@fortawesome/react-fontawesome';
import { faComments, faFloppyDisk, faGears, faRectangleList } from '@fortawesome/free-solid-svg-icons';

function TopMenu(props) {
	const {storyLog, overlay, toggleOverlay, currentText} = props;

	const menuKeys = ev => {
		if (currentText.input || currentText.minigame) {
			return;
		}
		const key = ev.key.toLowerCase();
		if (key === 'l') {
			toggleOverlay('log');
		}
		if (key === 's') {
			toggleOverlay('save');
		}
		if (key === 'o') {
			toggleOverlay('options');
		}
		if (key === 'c') {
			toggleOverlay('credits');
		}
		if (key === 'escape') {
			toggleOverlay(0);
		}
	}

	useEffect(() => {
		window.addEventListener('keydown', menuKeys);
		return () => {
			window.removeEventListener('keydown', menuKeys);
		}
	}, [overlay, currentText.input, currentText.minigame]);

	return (
		<div className="top-menu">
			{storyLog.length ? <button onClick={() => toggleOverlay('log')}><Icon icon={faComments} /></button> : false}
			<button onClick={() => toggleOverlay('save')}><Icon icon={faFloppyDisk} /></button>
			<button onClick={() => toggleOverlay('options')}><Icon icon={faGears} /></button>
			<button onClick={() => toggleOverlay('credits')}><Icon icon={faRectangleList} /></button>
		</div>
	)
}

export default TopMenu