code browser
checkIfClassExists: aMessageTally
	
	
	((aMessageTally method methodClass) = nil)
	ifTrue: [^ false].
	^ Smalltalk includesKey: (aMessageTally method methodClass theNonMetaClass asString asSymbol) 
	