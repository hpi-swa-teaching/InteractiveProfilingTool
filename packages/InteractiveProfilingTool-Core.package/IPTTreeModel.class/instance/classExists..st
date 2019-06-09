code browser
classExists: aMessageTally

	| class |
	
	class := self getClass: aMessageTally.
	class ifNil: [^ false].
	^ self classExistsInSqueakEnvironment: class.
	