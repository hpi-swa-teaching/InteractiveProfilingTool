as yet unclassified
matchesFilter

	| selectorFilter selectorName |
	
	selectorFilter := self reportModel selectorFilter.
	selectorName := self item getSelectorName. 
	
	^ selectorFilter isEmptyOrNil
		ifTrue: [ true ] 
		ifFalse: [ selectorName includesSubstring: selectorFilter ]  