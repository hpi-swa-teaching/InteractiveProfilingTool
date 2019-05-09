as yet unclassified
buildWith: aBuilder
	"comment stating purpose of message"
	| windowSpec buttonSpec |

	windowSpec := self buildWindowWith: aBuilder.
	buttonSpec := self buildButtonWith: aBuilder.
	windowSpec children: { buttonSpec }.

	^ aBuilder build: windowSpec 