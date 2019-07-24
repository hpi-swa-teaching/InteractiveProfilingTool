messageTally access
classExists
	
	self getClass ifNil: [^ false].
	
	^ Smalltalk includesKey: self getClass asString asSymbol