tests
testBuildTreePanelWithChildren
	
	| spec children |

	spec := model buildTreePanelWith: builder.
	children := spec children.
	
	self ensure: (children at: 1) isValidSpec: 'PluggablePanelSpec'.
	self ensure: (children at: 2) isValidSpec: 'PluggableTreeSpec'.