toolbuilder
buildWith: aBuilder

	| window tree |

	window := self buildWindowWith: aBuilder.
	tree := self buildTreeWith:  aBuilder.
	window children: { tree }.

	^ aBuilder build: window 