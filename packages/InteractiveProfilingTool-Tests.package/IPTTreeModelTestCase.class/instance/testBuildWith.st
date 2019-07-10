tests
testBuildWith

	| tree window |
	
	tree := IPTTreeModelMock new roots: {tallyObject}.
	window := tree buildWith: MorphicToolBuilder new.
	
	self assert: (window isKindOf: PluggableSystemWindow).
	self assert: (
		(window submorphs select: [:s | s isKindOf: PluggableTreeMorph]) isEmpty not)