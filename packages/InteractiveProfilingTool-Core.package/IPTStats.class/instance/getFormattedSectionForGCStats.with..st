accessing
getFormattedSectionForGCStats: aTitle with: aDictionary

	| title items section |
	
	title := Text fromString: aTitle.
	title allBold.
	
	items := Text new.
	
	items
			append: (self getfullGCformatted: aDictionary);
			append: String cr;
			append: (self getIncrementalGCformatted: aDictionary);
			append: String cr;
			append: (self getTenuresFormatted: aDictionary);
			append: String cr;
			append: 'root table ',(aDictionary at: #rootOverflows),' overflows'. 
		
	section := Text new
		append: title;
		append: String cr;
		append: items;
		append: String cr.
		
		
	^ section