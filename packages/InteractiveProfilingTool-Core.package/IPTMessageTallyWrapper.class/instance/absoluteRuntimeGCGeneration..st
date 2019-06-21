helpers
absoluteRuntimeGCGeneration: runTime 

	| upTime |
	
	upTime := self messageTally time.
	
	^ (runTime / upTime * 100) roundTo: 0.01