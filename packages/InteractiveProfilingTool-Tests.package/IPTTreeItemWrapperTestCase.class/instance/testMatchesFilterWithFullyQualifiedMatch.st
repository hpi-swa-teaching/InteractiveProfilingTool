tests
testMatchesFilterWithFullyQualifiedMatch
	
	reportModel expect: #selectorFilter toReturn: 'Boolean >> ifTrue:'.
	
	self assert: treeItemWrapper matchesFilter
	
