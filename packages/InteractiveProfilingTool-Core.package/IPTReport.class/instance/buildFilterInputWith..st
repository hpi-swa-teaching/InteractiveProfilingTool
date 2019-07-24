toolbuilder
buildFilterInputWith: aBuilder

	^ aBuilder pluggableInputFieldSpec new
		model: self;
		getText: #selectorFilter;
		editText: #selectorFilter:;
		help: 'Filter by class or method name ...';
		indicateUnacceptedChanges: false;
		askBeforeDiscardingEdits: false