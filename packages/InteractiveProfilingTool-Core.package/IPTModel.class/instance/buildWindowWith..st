as yet unclassified
buildWindowWith: aBuilder
	"comment stating purpose of message"
	
	^ aBuilder pluggableWindowSpec new
		model: self;
		label: 'Profiler';
		extent: 200@100;
		closeAction: #stopProfiling;
		yourself

