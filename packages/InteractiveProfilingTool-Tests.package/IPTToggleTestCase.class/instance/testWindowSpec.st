tests
testWindowSpec

	| spec |
	
	spec := model getWindowSpecWith: builder.
	
	self ensure: spec isValidSpec: 'PluggableWindowSpec'