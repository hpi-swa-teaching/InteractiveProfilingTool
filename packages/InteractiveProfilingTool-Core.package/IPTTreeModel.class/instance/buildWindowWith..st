toolbuilder
buildWindowWith: aBuilder
	
	^ aBuilder pluggableWindowSpec new
		model: self;
		extent: self defaultWindowExtent;
		label: self defaultWindowLabel;
		yourself
