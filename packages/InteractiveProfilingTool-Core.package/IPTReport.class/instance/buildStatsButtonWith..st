toolbuilder
buildStatsButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: #statsButtonLabel;
		action: #openStats