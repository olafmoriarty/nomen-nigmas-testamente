function StoryLog(props) {
	const {storyLog} = props;
	return (
		<div className="story-log">{storyLog.map((el, index) => {
			if (el.input) {
				return false;
			}
			return (<div key={index} className={`log-line${el.style ? ' log-style-' + el.style : ''}`}>
				{el.style === 'dialog' && el.person && el.person.name ? <p className="log-speaker-name">{el.person.name}</p> : false}
				<p className="log-line-text">{el.text}</p>
			</div>)
		})}</div>
	)
}

export default StoryLog