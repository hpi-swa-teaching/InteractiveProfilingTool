filtering
matchesFilter

	| selectorFilter label |
	
	selectorFilter := self reportModel selectorFilter.
	label := '{1} >> {2}' format: { self item getClassName. self item getSelectorName }.
	
	^ selectorFilter isEmptyOrNil
		ifTrue: [ true ] 
		ifFalse: [ label includesSubstring: selectorFilter ]