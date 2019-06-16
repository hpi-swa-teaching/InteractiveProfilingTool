tests
testBrowseClassMethod
	
	| browser tree method tallyMock |

	method := IPTTreeModelTestCase theMetaClass compiledMethodAt: #doNothing.
	tallyMock := MessageTallyMock new method: method.
	tree := IPTTreeModel new 
		currentSelection: (MessageTallyWrapperMock new messageTally: tallyMock).

	browser := tree browseMethodCall.

	[self assert: #doNothing equals:(browser selectedMessageName). 
	self assert: #IPTTreeModelTestCase equals: (browser selectedClassName)] 
		ensure: [browser dependents first delete]