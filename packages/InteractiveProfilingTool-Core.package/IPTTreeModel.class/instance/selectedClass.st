code browser
selectedClass

	self currentSelection 
	ifNotNil: [
		(self checkIfClassExists: self currentSelection )
		ifTrue: 
			[^ self currentSelection method methodClass theNonMetaClass]
	]. 

	^ nil
	
