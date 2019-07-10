accessing
matches: aMessage

	^ (self matchesSelector: aMessage selector) and: (self matchesArguments: aMessage arguments)