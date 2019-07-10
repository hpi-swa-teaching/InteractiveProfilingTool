tests
testMatchesFilterWithClassMatch
	
	reportModel expect: #selectorFilter toReturn: 'Boolean'.
	
	self assert: treeItemWrapper matchesFilter
	
