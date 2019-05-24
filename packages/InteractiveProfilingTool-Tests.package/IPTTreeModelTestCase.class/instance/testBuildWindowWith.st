tests
testBuildWindowWith

	| pluggableWindowSpecActual |
	
	pluggableWindowSpecActual := IPTTreeModelMock new buildWindowWith: ToolBuilder new.
	self ensure: pluggableWindowSpecActual isValidSpec: 'PluggableWindowSpec'