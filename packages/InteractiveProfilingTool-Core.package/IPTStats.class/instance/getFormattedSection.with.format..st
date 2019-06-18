accessing
getFormattedSection: aTitle with: aDictionary format: aBlock

	| title items section |
	
	title := Text fromString: aTitle.
	title allBold.
	
	items := Text new.
	
	aDictionary keysAndValuesDo: [ :statName :statValue |
		items
			append: (statName asString);
			append: ': ';
			append: (aBlock value: statValue);
			append: String cr].
		
	section := Text new
		append: title;
		append: String cr;
		append: items;
		append: String cr;
		append: String cr.
		
	^ section