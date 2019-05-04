user interface
buildWindowWith: aBuilder
	"Basis Window. Stops running profiling when closed."
	
	^ aBuilder pluggableWindowSpec new
		model: self;
		label: 'Profiler';
		extent: 200@100;
		closeAction: #stopProfiling;
		yourself

