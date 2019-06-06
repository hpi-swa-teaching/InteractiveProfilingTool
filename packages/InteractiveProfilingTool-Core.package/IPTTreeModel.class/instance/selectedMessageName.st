as yet unclassified
selectedMessageName

	self currentSelection
	ifNotNil: [^ self currentSelection method selector]
	ifNil: [^ nil]. 