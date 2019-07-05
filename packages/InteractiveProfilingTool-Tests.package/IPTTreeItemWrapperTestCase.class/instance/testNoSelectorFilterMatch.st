as yet unclassified
testNoSelectorFilterMatch

	| model treeItem |
	
	model :=  IPTReportMock new selectorFilter: 'ifFalse:'.
	
	treeItem := IPTTreeItemWrapper with: wrappedTally model: model.
	
	self deny: treeItem matchesFilter
	
