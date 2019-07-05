toolbuilder
buildInputFieldWith: aBuilder

	^ aBuilder pluggableInputFieldSpec new
		model: self;
		editText: #selectorFilter:;
		indicateUnacceptedChanges: false;
		yourself
