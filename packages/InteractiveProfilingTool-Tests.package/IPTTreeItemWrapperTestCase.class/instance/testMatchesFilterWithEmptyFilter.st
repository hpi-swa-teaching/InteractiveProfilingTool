tests
testMatchesFilterWithEmptyFilter
	
	reportModel expect: #selectorFilter toReturn: ''.
	
	self assert: treeItemWrapper matchesFilter 
	
