function Background(props) {
	const {currentText} = props;
	if (!currentText || !currentText.location || !currentText.location.image) {
		return false;
	}
	return (
		<div className="background">
			<img src={currentText.location.image} alt={currentText.location.name} />
		</div>
	)
}

export default Background