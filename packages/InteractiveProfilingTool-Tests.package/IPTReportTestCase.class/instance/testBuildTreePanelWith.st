tests
testBuildTreePanelWith
	
	| spec |

	spec := model buildTreePanelWith: builder.
	
	self ensure: spec isValidSpec: 'PluggablePanelSpec'