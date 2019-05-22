time calculations
getRelativeTime: aMessageTally
	
	| absoluteTime |
	
	self initializeTotalTimeIfNecessaryUsing: aMessageTally.
	absoluteTime := self getAbsoluteTime: aMessageTally.
	(self totalTime = 0)
		ifTrue: [^ 100.0] "All calls in the tree have a time of 0. Catch this case to avoid ZeroDivide Error."
		ifFalse: [^ absoluteTime / self totalTime * 100.0]