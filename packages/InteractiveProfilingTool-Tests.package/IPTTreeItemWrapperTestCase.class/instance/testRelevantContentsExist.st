as yet unclassified
testRelevantContentsExist

	| wrappedTally treeItem|
	
	wrappedTally := wrappedTallyWithHighRuntime receivers: {wrappedTallyWithHighRuntime}.
	
	treeItem := IPTTreeItemWrapper with: wrappedTally.
	
	self assert: treeItem contents isEmpty not