toolbuilder
buildWith: aBuilder

	| windowSpec buttonSpec |

	windowSpec := self getWindowSpecWith: aBuilder.
	buttonSpec := self getButtonSpecWith: aBuilder.
	windowSpec children: {buttonSpec}.

	^ aBuilder build: windowSpec 