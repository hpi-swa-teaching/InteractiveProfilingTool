tests
testMatchesFilterWithUndefinedFilter	
	
	reportModel expect: #selectorFilter toReturn: nil.
	
	self assert: treeItemWrapper matchesFilter
	
