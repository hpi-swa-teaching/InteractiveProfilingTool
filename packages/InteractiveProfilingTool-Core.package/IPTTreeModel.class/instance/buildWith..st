toolbuilder
buildWith: aBuilder

	| codePane window tree |

	tree := self buildTreeWith:  aBuilder.
	codePane := self buildCodePaneWith: aBuilder.
	
	window := self buildWindowWith: aBuilder specs: {
		(0@0 corner: 1@400) -> [self buildTreeWith:  aBuilder].
		(0@400 corner: 1@1) -> [self buildCodePaneWith: aBuilder].
	}.
	^ aBuilder build: window 