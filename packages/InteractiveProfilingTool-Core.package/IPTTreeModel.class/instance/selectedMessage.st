as yet unclassified
selectedMessage

	self currentSelection
	ifNotNil: [^ self currentSelection method methodReference source]
	ifNil: [^ nil]. 