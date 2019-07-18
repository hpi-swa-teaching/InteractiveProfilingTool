information extraction
getRootOverflows
	
	self messageTally gcStats ifNil: [^ nil].
	
	^ self messageTally gcStats at: 22