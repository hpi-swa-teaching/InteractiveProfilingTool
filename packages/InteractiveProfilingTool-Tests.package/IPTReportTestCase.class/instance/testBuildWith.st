tests
testBuildWith

	| tree window |
	
	tree := IPTReportMock new roots: {wrappedTally}.
	window := tree buildWith: MorphicToolBuilder new.
	
	self assert: (window isKindOf: PluggableSystemWindow).
	self assert: (
		(window submorphs select: [:s | s isKindOf: PluggableTreeMorph]) isEmpty not)