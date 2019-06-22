helpers
getIncrementalGCformatted: aDictionary
	
	| incrementalGCInfo  |
	
	incrementalGCInfo := ((aDictionary at: #incrementalGCs) asString,
				 					' totalling ', 
									(aDictionary at: #incrementalGCTime),  
									' ms (', 
									(aDictionary at: #incrementalGCAbsoluteRunningTime),  
									'% uptime)').
							
	((aDictionary at: #incrementalGCs) = 0) ifFalse: [^ incrementalGCInfo, (self getAvgIncrementalGCInfo: aDictionary)].
	
	^ incrementalGCInfo 

	