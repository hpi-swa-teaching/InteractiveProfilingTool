accessing
getFormattedSection: aTitle with: aDictionary format: aBlock

	| title items section |
	
	title := Text fromString: aTitle.
	title allBold.
	
	items := aBlock value: aDictionary.
		
	section := Text new
		append: title;
		append: String cr;
		append: items;
		append: String cr.
		
	^ section