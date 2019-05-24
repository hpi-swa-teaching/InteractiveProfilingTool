tests
testBuildTreeWith
	
	| pluggableTreeSpecActual |
	
	pluggableTreeSpecActual := IPTTreeModelMock new buildTreeWith: ToolBuilder new.
	self ensure: pluggableTreeSpecActual isValidSpec: 'PluggableTreeSpec'