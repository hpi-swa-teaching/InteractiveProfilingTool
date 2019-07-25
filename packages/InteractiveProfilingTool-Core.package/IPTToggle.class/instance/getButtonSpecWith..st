toolbuilder
getButtonSpecWith: aBuilder
	
	| frame |

	frame := LayoutFrame new
		topFraction: 0;
		leftFraction: 0;
		bottomFraction: 1;
		rightFraction: 1;
		yourself.

	^ aBuilder pluggableButtonSpec new
		model: self;
		frame: frame;
		label: #buttonLabel;
		action: #toggleProfiling;
		yourself

