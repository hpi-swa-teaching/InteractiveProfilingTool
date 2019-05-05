as yet unclassified
buildWith: aBuilder
	"comment stating purpose of message"
	| window tree |

	window := self buildWindowWith: aBuilder.
	tree := self buildTreeWith:  aBuilder.
	window children: { tree }.

	^ aBuilder build: window 