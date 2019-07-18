tests
testGetTimeString

	| expectedTimeString |
	
	expectedTimeString := '50.0 % {100 ms}'.
	
	self assert: expectedTimeString equals: wrappedTallyMock getTimeString