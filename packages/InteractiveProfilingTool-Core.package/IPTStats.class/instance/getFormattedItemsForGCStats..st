accessing
getFormattedItemsForGCStats: aDictionary

	| items |
	
	items := Text new.
	
	items
			append: (self getfullGCformatted: aDictionary), String cr;
			append: (self getIncrementalGCformatted: aDictionary), String cr;
			append: (self getTenuresFormatted: aDictionary), String cr;
			append: 'root table ',(aDictionary at: #rootOverflows),' overflows', String cr.		
		
	^ items