tests
testPreferredColorWithoutMatch
	
	reportModel expect: #selectorFilter toReturn: 'ifFalse:'.
	
	self assert: Color gray equals: treeItemWrapper preferredColor  
	
