testing
testRegisterInWorldMenu

	| isRegisteredToWorldMenu |
	
	isRegisteredToWorldMenu := self isRegisteredToWorldMenu. 
	self unregisterFromWorlMenu.
	
	IPTToggle registerInWorldMenu.
	self assert: self isRegisteredToWorldMenu.
	
	isRegisteredToWorldMenu ifFalse: [
			self unregisterFromWorlMenu]