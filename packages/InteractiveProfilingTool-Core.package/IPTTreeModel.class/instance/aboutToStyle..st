code browser
aboutToStyle: aPluggableShoutMorphOrView  
	"This message is a modified version of a MessageSet message.
	It notifies the PluggableTextMorph that it is about to restyle its text."

	| isStyleable |

	isStyleable := self currentSelection notNil.

	isStyleable ifTrue: [aPluggableShoutMorphOrView classOrMetaClass: self selectedClass]. 
	^ isStyleable