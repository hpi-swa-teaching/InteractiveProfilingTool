as yet unclassified
checkIfClassExists: aMessageTally
	
	^ Smalltalk includesKey: (aMessageTally method methodClass theNonMetaClass asString asSymbol) 
	