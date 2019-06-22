accessing
getFormattedItemsForGCStats: aDictionary

	| items |
	
	items := Text new.
	
	items
			append: (self getfullGCformatted: aDictionary);
			append: String cr;
			append: (self getIncrementalGCformatted: aDictionary);
			append: String cr;
			append: (self getTenuresFormatted: aDictionary);
			append: String cr;
			append: 'root table ',(aDictionary at: #rootOverflows),' overflows';
			append: String cr.
		
	^ items