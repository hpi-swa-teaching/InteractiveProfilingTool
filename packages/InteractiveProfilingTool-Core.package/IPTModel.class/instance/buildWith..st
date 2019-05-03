as yet unclassified
buildWith: aBuilder
	"comment stating purpose of message"
	| window button |

	window := self buildWindowWith: aBuilder.
	button := self buildButtonWith: aBuilder.
	window children: { button }.

	^ aBuilder build: window 