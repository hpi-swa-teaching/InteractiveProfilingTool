toolbuilder
buildWindowWith: aBuilder
	
	^ aBuilder pluggableWindowSpec new
		model: self;
		extent: 500@500;
		yourself
