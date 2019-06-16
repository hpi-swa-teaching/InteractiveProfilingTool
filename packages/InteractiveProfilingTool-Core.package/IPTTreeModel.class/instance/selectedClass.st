code browser
selectedClass

	self currentSelection 
		ifNil: [^ nil].

	(self classExists: self currentSelection)
		ifFalse: [^ nil].
		
	^ self currentSelection getClass