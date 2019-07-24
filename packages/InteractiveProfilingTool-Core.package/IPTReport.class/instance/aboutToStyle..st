code browser
aboutToStyle: aPluggableShoutMorphOrView

	self isStyleable 
		ifTrue: [self notifyAboutUpcomingRestyling: aPluggableShoutMorphOrView]. 
	^ self isStyleable 