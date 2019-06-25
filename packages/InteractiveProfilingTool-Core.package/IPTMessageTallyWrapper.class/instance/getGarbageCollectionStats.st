information extraction
getGarbageCollectionStats

	| gcStats |
	
	gcStats := self messageTally gcStats.
	
	gcStats ifNil: [^ nil].
					
	^ Dictionary newFrom: {
		#full 					-> self getFullGarbageCollectionStats.
		#incremental 		-> self getIncrementalGarbageCollectionStats.	
		#tenures 			-> (gcStats at: 11).
		#rootOverflows 	-> (gcStats at: 22)}