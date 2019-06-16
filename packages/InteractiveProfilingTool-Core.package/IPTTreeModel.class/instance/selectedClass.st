code browser
selectedClass

	self currentSelection ifNotNil: [
		(self classExists: self currentSelection)
			ifTrue: [^ self currentSelection getClass]]. 
	^ nil
	
