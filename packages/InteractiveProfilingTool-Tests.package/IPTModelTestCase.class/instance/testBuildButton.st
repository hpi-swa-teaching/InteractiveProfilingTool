tests
testBuildButton

	| spec |
	
	spec := model buildButtonWith: builder.
	self ensure: spec isValidSpec: 'PluggableButtonSpec'