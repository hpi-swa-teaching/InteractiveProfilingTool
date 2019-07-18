tests
testBuildWindowWith

	| spec |
	
	spec := model buildWindowWith: builder.
	
	self ensure: spec isValidSpec: 'PluggableWindowSpec'.