tests
testBrowseClassMethod
	
	| browser tree method tallyMock |

	method := IPTReportTestCase theMetaClass compiledMethodAt: #doNothing.
	tallyMock := MessageTallyMock new method: method.
	tree := IPTReport new 
		currentSelection: (MessageTallyWrapperMock new messageTally: tallyMock).

	browser := tree browseMethodCall.

	[self assert: #doNothing equals:(browser selectedMessageName). 
	self assert: #IPTReportTestCase equals: (browser selectedClassName)] 
		ensure: [browser dependents first delete]