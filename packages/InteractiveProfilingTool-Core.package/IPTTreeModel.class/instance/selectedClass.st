as yet unclassified
selectedClass

	self currentSelection
	ifNotNil: [^ self currentSelection method methodClass]
	ifNil: [^ nil]. 