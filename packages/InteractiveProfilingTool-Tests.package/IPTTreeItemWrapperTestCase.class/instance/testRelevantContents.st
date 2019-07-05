as yet unclassified
testRelevantContents

	| wrappedTally treeItem|
	
	wrappedTally := wrappedTallyWithHighRuntime receivers: {wrappedTallyWithLowRuntime}.
	
	treeItem := IPTTreeItemWrapper with: wrappedTally.
	
	self assert: treeItem contents isEmpty