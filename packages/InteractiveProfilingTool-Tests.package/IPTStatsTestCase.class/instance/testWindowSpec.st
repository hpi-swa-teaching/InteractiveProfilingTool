as yet unclassified
testWindowSpec

	| spec |
	
	spec := model getWindowSpecWith: builder.
	self ensure: spec isValidSpec: 'PluggableWindowSpec'