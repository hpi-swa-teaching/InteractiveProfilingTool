tests
testBuildTreeWith
	
	| treeMock pluggableTreeSpecActual |
	
	treeMock := IPTTreeModelMock new roots: {}.
	pluggableTreeSpecActual := treeMock  buildTreeWith: ToolBuilder new.
	
	self ensure: pluggableTreeSpecActual isValidSpec: 'PluggableTreeSpec'