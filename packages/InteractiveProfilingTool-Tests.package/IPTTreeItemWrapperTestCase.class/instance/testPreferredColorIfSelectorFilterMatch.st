as yet unclassified
testPreferredColorIfSelectorFilterMatch

	| model treeItem |
	
	model :=  IPTReportMock new selectorFilter: 'ifTrue'.
	
	treeItem := IPTTreeItemWrapper with: wrappedTally model: model.
	
	self assert: Color black equals: treeItem preferredColor  
	
