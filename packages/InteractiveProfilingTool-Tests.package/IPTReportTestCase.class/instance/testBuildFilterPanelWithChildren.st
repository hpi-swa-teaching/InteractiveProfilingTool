tests
testBuildFilterPanelWithChildren
	
	| spec children |

	spec := model buildFilterPanelWith: builder.
	children := spec children.
	
	self ensure: (children at: 1) isValidSpec: 'PluggableButtonSpec'.
	self ensure: (children at: 2) isValidSpec: 'PluggableInputFieldSpec'.