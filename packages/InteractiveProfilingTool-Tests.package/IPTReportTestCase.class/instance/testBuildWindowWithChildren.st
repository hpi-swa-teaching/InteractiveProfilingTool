tests
testBuildWindowWithChildren

	| spec children |
	
	spec := model buildWindowWith: builder.
	children := spec children.
	
	self assert: 2 equals: spec children size.
	self ensure: (children at: 1) isValidSpec: 'PluggablePanelSpec'.
	self ensure: (children at: 2) isValidSpec: 'PluggablePanelSpec'