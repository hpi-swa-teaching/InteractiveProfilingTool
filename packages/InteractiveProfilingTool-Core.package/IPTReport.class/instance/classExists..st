code browser
classExists: aNode

	| class |
	
	class := aNode getClass.
	class ifNil: [^ false].
	
	^ self classExistsInSqueakEnvironment: class.
	