code browser
contents: aStringContainingSourceCode notifying: aController
	
	self okayToAccept 
		ifFalse: [^ false].
	
	(self changeSourceCodeTo: aStringContainingSourceCode notifying: aController)
		ifFalse: [^ false].
	
	self setContentInCodeHolder: aStringContainingSourceCode.
	self changed: #annotation.

	^ true