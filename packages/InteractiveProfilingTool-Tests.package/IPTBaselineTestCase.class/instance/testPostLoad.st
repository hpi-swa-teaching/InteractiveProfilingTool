testing
testPostLoad

	| isRegisteredToWorldMenu |
	
	isRegisteredToWorldMenu := self isRegisteredToWorldMenu.
	self unregisterFromWorlMenu.
	
	BaselineOfInteractiveProfilingTool new postLoad.
	self assert: self isRegisteredToWorldMenu.
	
	isRegisteredToWorldMenu ifFalse: [self unregisterFromWorlMenu] 