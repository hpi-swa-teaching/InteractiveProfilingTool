toolbuilder
getWindowSpecWith: aBuilder
	
	^ aBuilder pluggableWindowSpec new
		model: self;
		label: 'Interactive Profiler';
		extent: 200@100;
		closeAction: #stopProfiling;
		yourself

