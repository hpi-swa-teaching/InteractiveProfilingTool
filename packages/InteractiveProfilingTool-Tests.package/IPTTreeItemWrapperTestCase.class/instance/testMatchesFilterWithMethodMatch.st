tests
testMatchesFilterWithMethodMatch
	
	reportModel expect: #selectorFilter toReturn: 'ifTrue:'.
	
	self assert: treeItemWrapper matchesFilter
	
