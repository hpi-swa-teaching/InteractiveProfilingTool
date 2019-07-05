toolbuilder
buildFilterButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: #filterButtonLabel;
		action: #filterSelectors;
		yourself
