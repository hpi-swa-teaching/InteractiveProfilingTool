helpers
setupMemoryTestData

	model root expect: #getMemoryStats toReturn: (Dictionary newFrom: {
		#free -> 0.
		#used -> 0.
		#old -> 0.
		#young -> 0}).