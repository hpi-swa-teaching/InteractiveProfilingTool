as yet unclassified
setUp

	tallyMock := MessageTallyMock new 
		method: Boolean >> #ifTrue:;
		tally: 70;
		receivers: {}.
		
	wrappedTally := MessageTallyWrapperMock new 
		messageTally: tallyMock.
		
	model :=  IPTReportMock new .
	
	treeMorph := PluggableTreeMorph new model: model.
	
	treeItem := IPTTreeItemWrapper 
		with: wrappedTally 
		model: treeMorph.