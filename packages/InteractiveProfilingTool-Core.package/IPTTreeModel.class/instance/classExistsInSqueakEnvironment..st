code browser
classExistsInSqueakEnvironment: aClass

	^ Smalltalk includesKey: (aClass asString asSymbol) 