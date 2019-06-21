helpers
getIncrementalGCformatted: aDictionary
	
	| incrementalGCInfo  |
	
	incrementalGCInfo := ((aDictionary at: #incrementalGCs) asString,
				 					' totalling ', 
									(aDictionary at: #incrementalGCTime),  
									' ms (', 
									(aDictionary at: #incrementalGCAbsoluteRunningTime),  
									'% uptime)').
							
	((aDictionary at: #incrementalGCs) = 0) ifFalse: [^incrementalGCInfo, ', avg ',
										(((aDictionary at: #incrementalGCTime) / (aDictionary at: #incrementalGCs)) roundTo: 0.1),
										' ms '].
	
	^ incrementalGCInfo 

	