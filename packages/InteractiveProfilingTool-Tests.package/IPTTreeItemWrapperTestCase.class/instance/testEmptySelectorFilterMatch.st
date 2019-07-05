as yet unclassified
testEmptySelectorFilterMatch

	| model treeItem |
	
	model :=  IPTReportMock new selectorFilter: ''.
	
	treeItem := IPTTreeItemWrapper with: wrappedTally model: model.
	
	self assert: treeItem matchesFilter 
	
