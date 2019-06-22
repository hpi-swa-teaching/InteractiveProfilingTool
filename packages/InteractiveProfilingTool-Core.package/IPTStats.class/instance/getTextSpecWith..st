toolbuilder
getTextSpecWith: aBuilder

	^ aBuilder pluggableTextSpec new
			model: self;
			getText: #getFormattedStats;
			readOnly: true;
			indicateUnacceptedChanges: false;
			color: #windowColorToUse;
			yourself