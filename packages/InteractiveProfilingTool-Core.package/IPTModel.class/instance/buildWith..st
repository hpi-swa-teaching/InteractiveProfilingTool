user interface
buildWith: aBuilder
	| windowSpec buttonSpec |

	windowSpec := self buildWindowWith: aBuilder.
	buttonSpec := self buildButtonWith: aBuilder.
	windowSpec children: { buttonSpec }.

	^ aBuilder build: windowSpec 