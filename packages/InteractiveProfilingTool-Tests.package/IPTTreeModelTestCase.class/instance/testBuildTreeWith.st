tests
testBuildTreeWith
	
	| pluggableTreeSpecActual |
	
	pluggableTreeSpecActual := IPTTreeModel new buildTreeWith: ToolBuilder new.
	self ensure: pluggableTreeSpecActual isValidSpec: 'PluggableTreeSpec'