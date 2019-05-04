user interface
buildButtonWith: aBuilder
	"Button that runs toggleProfiling when clicked with variable label."
	
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

