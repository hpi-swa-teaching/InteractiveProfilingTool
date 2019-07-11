model access
userCallsRootAsCollection
	
	self userCallsRoot 
		ifNil: [^ {}].
	
	^ {self userCallsRoot}