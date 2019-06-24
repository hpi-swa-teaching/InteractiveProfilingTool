tests
testGetGarbageCollectorStatsFull

	| expected actual |
	
	actual := wrappedTallyMock getGarbageCollectorStats at: #full.
	expected := Dictionary newFrom: {
		#count -> 111.
		#time -> 222.
		#relativeTime -> 33.33.
		#averageTime -> 2 }.

	self assert: expected equals: actual


		
	