as yet unclassified
getTextSpecWith: aBuilder

	"| frame |"

	"frame := LayoutFrame new 
		topFraction: 0;
		leftFraction: 0;
		bottomFraction: 1;
		rightFraction: 1;
		yourself."

	^ aBuilder pluggableTextSpec new
			model: self;
			getText: #getFormattedStats;
			yourself