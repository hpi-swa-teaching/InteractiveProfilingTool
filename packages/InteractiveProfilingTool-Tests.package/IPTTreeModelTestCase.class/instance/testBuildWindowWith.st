tests
testBuildWindowWith

	| pluggableWindowSpecActual |
	
	pluggableWindowSpecActual := describedClass new buildWindowWith: ToolBuilder new.
	self ensure: pluggableWindowSpecActual isValidSpec: 'PluggableWindowSpec'