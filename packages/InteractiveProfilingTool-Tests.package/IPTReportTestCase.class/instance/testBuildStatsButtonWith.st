tests
testBuildStatsButtonWith

	| spec |
	
	spec := model buildStatsButtonWith: builder.
	
	self ensure: spec isValidSpec: 'PluggableButtonSpec'