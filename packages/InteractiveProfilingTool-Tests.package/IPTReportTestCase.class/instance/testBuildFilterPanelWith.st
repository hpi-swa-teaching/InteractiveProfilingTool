tests
testBuildFilterPanelWith
	
	| spec |

	spec := model buildFilterPanelWith: builder.
	
	self ensure: spec isValidSpec: 'PluggablePanelSpec'