tests
testBuildWindowWith

	| pluggableWindowSpecActual |
	
	pluggableWindowSpecActual := IPTReportMock new buildWindowWith: ToolBuilder new.
	self ensure: pluggableWindowSpecActual isValidSpec: 'PluggableWindowSpec'