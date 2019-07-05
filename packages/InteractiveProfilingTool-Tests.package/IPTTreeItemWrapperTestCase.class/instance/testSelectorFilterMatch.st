as yet unclassified
testSelectorFilterMatch

	| model treeItem |
	
	model :=  IPTReportMock new selectorFilter: 'ifTrue:'.
	
	treeItem := IPTTreeItemWrapper with: wrappedTally model: model.
	
	self assert: treeItem matchesFilter
	
