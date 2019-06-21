helpers
getIncrementalGCformatted: aDictionary
	
	| incrementalGCInfo avgIncrementalGCInfo |
	
	incrementalGCInfo := ((aDictionary at: #incrementalGCs),
				 					' totalling ', 
									aDictionary at: #incrementalGCTime,  
									' ms (', 
									aDictionary at: #incrementalGCAbsoluteRunningTime,  
									'% uptime)').
	
	avgIncrementalGCInfo :=	', avg ',
										(aDictionary at: #incrementalGCTime / aDictionary at: #incrementalGCs) roundTo: 0.1,
										' ms ('.	
							
	(aDictionary at: #incrementalGCs = 0) ifFalse: [^incrementalGCInfo, avgIncrementalGCInfo].
	
	^ incrementalGCInfo 

	