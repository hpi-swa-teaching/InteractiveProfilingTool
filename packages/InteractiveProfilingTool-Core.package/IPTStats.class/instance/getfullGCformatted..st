helpers
getfullGCformatted: aDictionary
	
	| fullGCInfo |
	
	fullGCInfo:=  ((aDictionary at: #fullGCs) asString,
						 ' totalling ', 
						(aDictionary at: #fullGCTime),  
						' ms (', 
						(aDictionary at: #fullGCAbsoluteRunningTime),  
						'% uptime)').
						
								
	((aDictionary at: #fullGCs) = 0) ifFalse: [^ fullGCInfo, (self getAvgFullGCInfo: aDictionary)].
	
	^ fullGCInfo

	