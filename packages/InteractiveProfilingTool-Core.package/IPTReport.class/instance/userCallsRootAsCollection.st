helpers
userCallsRootAsCollection
	
	self userCallsRoot ifNil: [^ {}].
	
	^ {self userCallsRoot}