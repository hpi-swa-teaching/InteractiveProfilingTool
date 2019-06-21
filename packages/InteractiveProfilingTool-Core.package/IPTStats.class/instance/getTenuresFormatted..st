helpers
getTenuresFormatted: aDictionary

	| tensuresInfo |
	
	tensuresInfo := 'tenures ', (aDictionary at: #numberOfObjectsInOldSpace).
	

	((aDictionary at: #numberOfObjectsInOldSpace) = 0) ifFalse: [^tensuresInfo, '(avg ', 
							(((aDictionary at: #incrementalGCs)	/ (aDictionary at: #numberOfObjectsInOldSpace)) roundTo: 0.1), 
							' GCs/tenure)'.].
						
	^ tensuresInfo