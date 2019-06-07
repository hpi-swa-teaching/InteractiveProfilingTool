as yet unclassified
selectedMessageName

	self currentSelection
	ifNil: [^ nil].
	
	^ self currentSelection method selector