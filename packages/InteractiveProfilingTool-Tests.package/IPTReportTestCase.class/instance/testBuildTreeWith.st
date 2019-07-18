tests
testBuildTreeWith
	
	| spec |

	spec := model buildTreeWith: builder.
	
	self ensure: spec isValidSpec: 'PluggableTreeSpec'