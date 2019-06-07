as yet unclassified
testSourceCodeWhenClassAndMethodExist

	| compiledMethod tree source |
	
	compiledMethod :=  (BlockClosure>>#ensure:).
		
	tree := IPTTreeModelMock new.
	tree currentSelection: MessageTallyMock new.
	
	tree currentSelection method: compiledMethod.
	
	source := compiledMethod methodReference source.
	
	self assert: source equals: tree selectedMessage.