toolbuilder
buildFilterInputWith: aBuilder

	^ aBuilder pluggableInputFieldSpec new
		model: self;
		editText: #selectorFilter:;
		help: 'Filter by selector ...';
		indicateUnacceptedChanges: false;
		askBeforeDiscardingEdits: false;
		yourself
