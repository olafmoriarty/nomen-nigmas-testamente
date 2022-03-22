function Background(props) {
	const {currentText} = props;
	if (!currentText || !currentText.background) {
		return false;
	}
	return (
		<div className="background">
			<img src={currentText.background} alt="" />
		</div>
	)
}

export default Background