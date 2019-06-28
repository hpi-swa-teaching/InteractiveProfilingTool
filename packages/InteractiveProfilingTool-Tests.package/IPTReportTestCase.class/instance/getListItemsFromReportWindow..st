helpers
getListItemsFromReportWindow: window
	
	^ (window submorphNamed: #tree) submorphs second submorphs asOrderedCollection
	