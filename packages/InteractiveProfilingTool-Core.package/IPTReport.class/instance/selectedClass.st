code browser
selectedClass

	self currentSelection 
		ifNil: [^ nil].

	(self currentSelection classExists)
		ifFalse: [^ nil].
		
	^ self currentSelection getClass