as yet unclassified
buildWindowWith: aBuilder
	"comment stating purpose of message"
	
	^ aBuilder pluggableWindowSpec new
		model: self;
		extent: 500@500;
		yourself
