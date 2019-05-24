model access
getIcon: aMessageTally
	self highlightingThreshold <= (self getRelativeTime: aMessageTally) 
		ifTrue: [^ ToolIcons testRedIcon]
		ifFalse: [^ nil]
	