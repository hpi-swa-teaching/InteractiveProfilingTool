tests
testBuildFilterInputWith

	| spec |
	
	spec := model buildFilterInputWith: builder.
	
	self ensure: spec isValidSpec: 'PluggableInputFieldSpec'