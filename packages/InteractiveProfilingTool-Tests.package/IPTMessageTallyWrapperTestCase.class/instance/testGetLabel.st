tests
testGetLabel

	| expectedLabel |
	
	expectedLabel := '50.0 % {100 ms} Boolean >> ifTrue:'.
	
	self assert: expectedLabel equals: wrappedTallyMock getLabel