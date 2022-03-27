import {useState, useEffect} from 'react'

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
		<div className="save-slot">
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
	const autosave = JSON.parse(localStorage.getItem('autosave'));
  return (
	<div className="save-window">
		<SaveSlot name="autosave" prettyName="Automatisk lagring" loadGame={loadGame} setOverlay={setOverlay} />
		<SaveSlot name="saveSlot1" loadGame={loadGame} setOverlay={setOverlay} />
		<SaveSlot name="saveSlot2" loadGame={loadGame} setOverlay={setOverlay} />
		<SaveSlot name="saveSlot3" loadGame={loadGame} setOverlay={setOverlay} />
	</div>
  )
}

export default LoadSave