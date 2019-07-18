initialization
setInitialSelection
	
	self userCallsRoots isEmpty 
		ifFalse: [self currentSelection: self userCallsRoots first]