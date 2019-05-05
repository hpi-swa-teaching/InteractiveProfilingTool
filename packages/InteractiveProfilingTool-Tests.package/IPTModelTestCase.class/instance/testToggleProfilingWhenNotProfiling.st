as yet unclassified
testToggleProfilingWhenNotProfiling

	"Currently, it's impossible to test methods that start the
	profiler directly or indirectly. We should think about isolating
	calls to MessageTally>>spyOn and friends to make sure we
	can test the rest of our code."
	
	self assert: false