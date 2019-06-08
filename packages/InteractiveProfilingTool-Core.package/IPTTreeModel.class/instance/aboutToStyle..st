code browser
aboutToStyle: aPluggableShoutMorphOrView  
	"This message is a modified version of a MessageSet message.
	It notifies the PluggableTextMorph that it is about to restyle its text."

	self isStyleable
			ifTrue: [self notifyAboutUpcomingRestyling: aPluggableShoutMorphOrView]. 
	^ self isStyleable 