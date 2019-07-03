initialization
setInitialSelection
	
	self roots isEmpty 
		ifFalse: [self currentSelection: self roots first]