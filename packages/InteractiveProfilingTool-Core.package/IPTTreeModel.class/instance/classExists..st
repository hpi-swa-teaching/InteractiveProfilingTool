code browser
classExists: aMessageTally

	((self getClass: aMessageTally ) = nil)
	ifTrue: [^ false].
	^ Smalltalk includesKey: ((self getClass: aMessageTally) asString asSymbol) 
	