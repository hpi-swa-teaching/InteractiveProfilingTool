toolbuilder
buildWindowWith: aBuilder
	
	^ aBuilder pluggableWindowSpec new
		model: self;
		label: 'Profiler';
		extent: 200@100;
		closeAction: #stopProfiling;
		yourself

