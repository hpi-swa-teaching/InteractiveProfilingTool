tests
testBrowseClassMethod
	
	| browser tree method |

	method := IPTTreeModelTestCase theMetaClass compiledMethodAt: #doNothing.
	tree := IPTTreeModel new currentSelection: (MessageTallyMock new method: method).

	browser := tree browseMethodCall.

	[self assert: #doNothing equals:(browser selectedMessageName). 
	self assert: #IPTTreeModelTestCase equals: (browser selectedClassName)] 
		ensure: [browser dependents first delete]