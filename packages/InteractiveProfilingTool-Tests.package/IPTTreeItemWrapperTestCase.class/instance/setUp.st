running
setUp

	reportModel := Mock new.
	treeMorph := Mock expect: #model toReturn: reportModel.
	
	wrappedTally := Mock new
		expect: #getClassName toReturn: 'Boolean';
		expect: #getSelectorName toReturn: 'ifTrue:';
		yourself.
	
	treeItemWrapper := IPTTreeItemWrapper with: wrappedTally model: treeMorph.