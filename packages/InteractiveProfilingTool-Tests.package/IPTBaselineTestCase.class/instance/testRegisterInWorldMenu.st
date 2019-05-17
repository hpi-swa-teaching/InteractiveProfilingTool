testing
testRegisterInWorldMenu

	| isRegisteredToWorldMenu |
	
	isRegisteredToWorldMenu := self isRegisteredToWorldMenu. 
	self unregisterFromWorlMenu.
	
	IPTModel registerInWorldMenu.
	self assert: self isRegisteredToWorldMenu.
	
	isRegisteredToWorldMenu ifFalse: [
			self unregisterFromWorlMenu]