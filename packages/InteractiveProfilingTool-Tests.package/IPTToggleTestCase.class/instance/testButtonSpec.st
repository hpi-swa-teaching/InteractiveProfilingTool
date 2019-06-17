tests
testButtonSpec

	| spec |
	
	spec := model getButtonSpecWith: builder.
	self ensure: spec isValidSpec: 'PluggableButtonSpec'