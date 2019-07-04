tests
testBuildTreeWith
	
	| treeMock pluggableTreeSpecActual |
	
	treeMock := IPTReportMock new userCallsRoots: {}.
	pluggableTreeSpecActual := treeMock  buildTreeWith: ToolBuilder new.
	
	self ensure: pluggableTreeSpecActual isValidSpec: 'PluggableTreeSpec'