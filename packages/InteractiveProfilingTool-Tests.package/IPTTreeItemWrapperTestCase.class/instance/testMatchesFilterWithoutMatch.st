tests
testMatchesFilterWithoutMatch
	
	reportModel expect: #selectorFilter toReturn: 'ifFalse:'.
	
	self deny: treeItemWrapper matchesFilter
	
