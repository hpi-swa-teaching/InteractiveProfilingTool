tests
testPreferredColorWithMatch
	
	reportModel expect: #selectorFilter toReturn: 'ifTrue:'.
	
	self assert: Color black equals: treeItemWrapper preferredColor  
	
