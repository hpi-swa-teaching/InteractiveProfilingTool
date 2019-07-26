tests
testWith

	| wrapper messageTally |
	
	messageTally := Mock new
		expect: #receivers toReturn: {};
		expect: #time toReturn: 500;
		expect: #tally toReturn: 1000. 
		
	wrapper := IPTMessageTallyWrapper with: messageTally.
	
	self assert: 500 equals: wrapper totalTimeOfOverallTree.
	self assert: 1000 equals: wrapper totalTallyCountOfOverallTree.