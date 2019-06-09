code browser
selectedMessageName

	self currentSelection ifNil: [^ nil].
	^ self getSelector: self currentSelection