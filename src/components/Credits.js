import {useState, useEffect, useRef} from 'react';
import { FontAwesomeIcon as Icon } from '@fortawesome/react-fontawesome';
import { faAnglesRight } from '@fortawesome/free-solid-svg-icons';

function Credits(props) {
	const {credits, setOverlay} = props;
	const [creditsPage, setCreditsPage] = useState([]);
	const [nextPage, setNextPage] = useState(0);
	const [scrollTimeoutID, setScrollTimeoutID] = useState(false);
	const isActive = useRef(false);

	const updateSlice = (page) => {
		if (!isActive.current) {
			return;
		}
		if (credits.length > page) {
			setCreditsPage(<section className="credits-page" key={page}>
				{credits[page]}
			</section>);
			setNextPage(page + 1);
			const scrollTimeout = setTimeout(() => updateSlice(page + 1), 5000);
			setScrollTimeoutID(scrollTimeout);
		}
		else {
			setOverlay(0);
		}
	}

	useEffect(() => {
		isActive.current = true;
		updateSlice(0);
		return () => {
			isActive.current = false;
		}
	}, []);

	const goToNextPage = () => {
		clearTimeout(scrollTimeoutID);
		updateSlice(nextPage);
	}

	return (
		<div className="credits">
				{creditsPage}
				<button className="next-credits-page-button" onClick={() => goToNextPage()}><Icon icon={faAnglesRight} /></button>
		</div>
	)
}

export default Credits;