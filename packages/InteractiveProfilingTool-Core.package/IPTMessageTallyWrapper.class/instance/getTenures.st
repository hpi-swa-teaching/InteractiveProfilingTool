information extraction
getTenures
	
	self messageTally gcStats 
		ifNil: [^ nil].
	
	^ self messageTally gcStats at: 11