code browser
classExists: aMessageTally

	| class |
	
	class := self getClass: aMessageTally.
	
	(class = nil)
	ifTrue: [^ false].
	
	^ self classExistsInSqueakEnvironment: class.
	