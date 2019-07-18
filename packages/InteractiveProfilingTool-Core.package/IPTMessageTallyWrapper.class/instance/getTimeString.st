information extraction
getTimeString

	| values | 
	
	values := {
		self getRelativeTime printShowingDecimalPlaces: 1.
		self getAbsoluteTime printShowingDecimalPlaces: 0
	}.

	^ ('{1} % \{{2} ms\}') format: values