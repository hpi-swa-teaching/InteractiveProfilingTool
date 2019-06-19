as yet unclassified
getTextSpecWith: aBuilder

	^ aBuilder pluggableTextSpec new
			model: self;
			getText: #getFormattedStats;
			yourself