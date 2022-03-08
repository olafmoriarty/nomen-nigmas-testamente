import React from 'react'

function Portrait(props) {
	const {currentText} = props;
	if (!currentText || !currentText.person || !currentText.person.portrait) {
		return false;		
	}

	return (
		<div className="portrait">
			<img src={currentText.person.portrait} alt={currentText.person.name} />
		</div>
  )
}

export default Portrait