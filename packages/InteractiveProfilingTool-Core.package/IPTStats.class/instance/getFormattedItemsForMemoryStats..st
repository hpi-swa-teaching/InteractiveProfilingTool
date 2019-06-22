accessing
getFormattedItemsForMemoryStats: aDictionary 

	| items |
	
	items := Text new.
	
	items
		append: 'old ' , (aDictionary at:#old), ' bytes', String cr;
		append: 'young ' , (aDictionary at:#young), ' bytes', String cr;
		append: 'used ' , (aDictionary at:#used), ' bytes', String cr;
		append: 'free ' , (aDictionary at:#free), ' bytes', String cr.
		
	^ items