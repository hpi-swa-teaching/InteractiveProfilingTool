as yet unclassified
getFormattedSectionForLeaves: aTitle with: aCollection
	
	| title items section |
	
	title := Text fromString: aTitle.
	title allBold.
	
	items := Text new.
	
	aCollection do: [ :item | items append: (item getLabel, String cr)].
	
	(aCollection isEmpty) ifTrue: [items append: 'No leave with relevant performace exist'].
		
	section := Text new
		append: title;
		append: String cr;
		append: items;
		append: String cr.
			
	^ section