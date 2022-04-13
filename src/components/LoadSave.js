import {useState, useEffect} from 'react'
import { FontAwesomeIcon as Icon } from '@fortawesome/react-fontawesome';
import { faTimes } from '@fortawesome/free-solid-svg-icons';

function SaveSlot(props) {
	const {name, prettyName, loadGame, setOverlay} = props;
	const [saveFileJson, setSaveFileJson] = useState(false);

	useEffect(() => {
		const saveFile = localStorage.getItem(name);
		if (saveFile) {
			setSaveFileJson(JSON.parse(saveFile));
		}
	}, [])

	function saveGame() {
		const saveFile = localStorage.getItem('autosave');
		if (name && saveFile) {
			localStorage.setItem(name, saveFile);
			setSaveFileJson(JSON.parse(saveFile));
		}
	}
	
	return (
		<div className="save-slot" style={{backgroundImage: saveFileJson && saveFileJson.location && saveFileJson.location.image ? 'url(' + saveFileJson.location.image + ')' : ''}}>
			{prettyName ? <h2>{prettyName}</h2> : false}
			{saveFileJson ? <>
				{saveFileJson.location && saveFileJson.location.name ? <p>{saveFileJson.location.name}</p> : false}
				<p>{saveFileJson.timestamp}</p>
			</> : <p>Ingenting lagra her.</p>}
			<div className="load-save-buttons">
				{saveFileJson ? <button onClick={() => {
					loadGame(name);
					setOverlay(0);
				}}>Opne</button> : false}
				{name !== 'autosave' && localStorage.getItem('autosave') ? <button onClick={() => saveGame()}>{saveFileJson ? "Overskriv" : "Lagre"}</button> : false}
			</div>
		</div>

	);
}

function LoadSave(props) {
	const {loadGame, setOverlay} = props;
  return (
	<div className="save-window">
		<SaveSlot name="autosave" prettyName="Automatisk lagring" loadGame={loadGame} setOverlay={setOverlay} />
		<SaveSlot name="saveSlot1" loadGame={loadGame} setOverlay={setOverlay} />
		<SaveSlot name="saveSlot2" loadGame={loadGame} setOverlay={setOverlay} />
		<SaveSlot name="saveSlot3" loadGame={loadGame} setOverlay={setOverlay} />
		<button className="close-window" onClick={() => setOverlay(0)}><Icon icon={faTimes} /></button>
	</div>
  )
}

export default LoadSave