helpers
handleKey: aChar from: view event: event

	event anyModifierKeyPressed 
		ifFalse: [^ false].

	(self currentSelection notNil and: [aChar == $b])
			ifTrue: [self browseMethodCall. ^ true]. 

	^ false