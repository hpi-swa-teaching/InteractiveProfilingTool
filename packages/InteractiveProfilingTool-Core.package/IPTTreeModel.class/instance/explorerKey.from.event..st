key handling
explorerKey: aChar from: view event: event

	event anyModifierKeyPressed ifFalse: [^ false].

	self currentSelection ifNotNil: [
		aChar == $b ifTrue: [self browseMethodCall. ^ true]].

	^ false