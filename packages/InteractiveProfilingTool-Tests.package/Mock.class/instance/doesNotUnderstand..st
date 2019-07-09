error handling
doesNotUnderstand: aMessage
	
	| match |
	
	match := self expectations select: [ :expectation | expectation matches: aMessage ].
	match ifEmpty: [ super doesNotUnderstand: aMessage ].
	
	^ match asArray first returnValue.