helpers
getfullGCformatted: aDictionary
	
	| fullGCInfo avgFullGCInfo |
	
	fullGCInfo:=  ((aDictionary at: #fullGCs),
						 ' totalling ', 
						aDictionary at: #fullGCTime,  
						' ms (', 
						aDictionary at: #fullGCAbsoluteRunningTime,  
						'% uptime)').
						
	avgFullGCInfo :=  '(avg ', 
							(aDictionary at: #fullGCs	/ aDictionary at: #fullGCTime) roundTo: 0.1, 
							' ms'.	
								
	(aDictionary at: #fullGCs = 0) ifFalse: [^fullGCInfo, avgFullGCInfo].
	
	^ fullGCInfo

	