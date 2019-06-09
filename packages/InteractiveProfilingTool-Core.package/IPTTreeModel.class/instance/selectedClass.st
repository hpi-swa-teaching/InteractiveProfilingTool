code browser
selectedClass

	self currentSelection ifNotNil: [
		(self classExists: self currentSelection)
			ifTrue: [^ self getClass: self currentSelection]]. 
	^ nil
	
