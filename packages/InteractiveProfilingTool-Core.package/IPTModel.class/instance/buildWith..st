user interface
buildWith: aBuilder
	
	| window button |

	window := self buildWindowWith: aBuilder.
	button := self buildButtonWith: aBuilder.
	window children: { button }.

	^ aBuilder build: window 