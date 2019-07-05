as yet unclassified
testNoRelevantContentsExist

	| wrappedTally treeItem|
	
	wrappedTally := wrappedTallyWithHighRuntime receivers: {wrappedTallyWithLowRuntime}.
	
	treeItem := IPTTreeItemWrapper with: wrappedTally.
	
	self assert: treeItem contents isEmpty