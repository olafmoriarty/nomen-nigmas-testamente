function StoryLog(props) {
	const {storyLog, setOverlay} = props;
	return (
		<div className="story-log">
			<p className="log-tooltip">Trykk på loggikonet i menyen, eller bruk hurtigtast <span className="tast">L</span> eller <span className="tast">Esc</span>, for å lukke dette vindauget.</p>
			{storyLog.map((el, index) => {
			if (el.input) {
				return false;
			}
			return (<div key={index} className={`log-line${el.style ? ' log-style-' + el.style : ''}`}>
				{el.style === 'dialog' && el.person && el.person.name ? <p className="log-speaker-name">{el.person.name}</p> : false}
				<p className="log-line-text">{el.text}</p>
			</div>)
		})}
		</div>
	)
}

export default StoryLog