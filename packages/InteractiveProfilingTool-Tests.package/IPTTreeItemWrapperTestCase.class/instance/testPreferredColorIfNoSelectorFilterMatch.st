as yet unclassified
testPreferredColorIfNoSelectorFilterMatch

	| model treeItem |
	
	model :=  IPTReportMock new selectorFilter: 'ifFalse'.
	
	treeItem := IPTTreeItemWrapper with: wrappedTally model: model.
	
	self assert: Color gray equals: treeItem preferredColor  
	
