tests
testBuildWindowWith

	| pluggableWindowSpecActual |
	
	pluggableWindowSpecActual := IPTTreeModel new buildWindowWith: ToolBuilder new.
	self ensure: pluggableWindowSpecActual isValidSpec: 'PluggableWindowSpec'