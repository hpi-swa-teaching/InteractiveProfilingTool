helpers
getTenuresFormatted: aDictionary

	| tensuresInfo |
	
	tensuresInfo := 'tenures ', (aDictionary at: #numberOfObjectsInOldSpace).
	

	((aDictionary at: #numberOfObjectsInOldSpace) = 0) ifFalse: [^ tensuresInfo, (self getAvgTensuresGCInfo: aDictionary)].
						
	^ tensuresInfo