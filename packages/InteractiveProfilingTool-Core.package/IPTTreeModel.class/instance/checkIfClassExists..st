code browser
checkIfClassExists: aMessageTally
	
	^ Smalltalk includesKey: (aMessageTally method methodClass theNonMetaClass asString asSymbol) 
	