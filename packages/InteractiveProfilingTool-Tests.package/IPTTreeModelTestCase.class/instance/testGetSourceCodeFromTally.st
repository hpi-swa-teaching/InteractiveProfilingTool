as yet unclassified
testGetSourceCodeFromTally
	"comment stating purpose of message"

	| classExpected treeModelEmpty treeModelWithMethod |
	
				
	classExpected := ByteString new getClass.
			
	treeModelEmpty := IPTTreeModelMock new.
	treeModelEmpty currentSelection: MessageTallyMock new.
	
	
	treeModelWithMethod := IPTTreeModelMock new.
	treeModelWithMethod currentSelection:  (MessageTallyMock new
			method: (BlockClosure>>#ensure: "a CompiledMethod(2807422)");
			yourself).

	self assert: nil equals: treeModelEmpty selectedMessage.
	
	self assert: classExpected equals treeModelWithMethod class.