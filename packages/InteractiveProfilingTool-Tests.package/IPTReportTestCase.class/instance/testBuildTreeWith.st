tests
testBuildTreeWith
	
	| treeMock pluggableTreeSpecActual |
	
	treeMock := IPTReportMock new roots: {}.
	pluggableTreeSpecActual := treeMock  buildTreeWith: ToolBuilder new.
	
	self ensure: pluggableTreeSpecActual isValidSpec: 'PluggableTreeSpec'