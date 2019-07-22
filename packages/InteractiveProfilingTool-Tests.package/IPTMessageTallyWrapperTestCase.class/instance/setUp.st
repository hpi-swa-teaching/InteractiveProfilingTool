running
setUp
		
	messageTallyWithGarbageCollectionStats := Mock new
		"Nil values are not relevant for tests. For information on the values, please refer
		to IPTMessageTallyWrapper >> getGarbageCollectorStats"
		expect: #gcStats toReturn: #(100000 300000 0 nil nil nil 111 222 333 444 555 nil nil nil nil nil nil nil nil nil nil 666);
		expect: #time toReturn: 666;
		expect: #tally toReturn: 100;
		expect: #receivers toReturn: {}.