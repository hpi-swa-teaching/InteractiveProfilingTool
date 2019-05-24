model access
getIcon: aMessageTally
	self highlightingThreshold <= (self getRelativeTime: aMessageTally) 
		ifTrue: [^ self runtimeIcon]
		ifFalse: [^ nil]
	