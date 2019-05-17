tests
testBuildTreeWith
	
	| pluggableTreeSpecActual |
	
	pluggableTreeSpecActual := describedClass new buildTreeWith: ToolBuilder new.
	self ensure: pluggableTreeSpecActual isValidSpec: 'PluggableTreeSpec'