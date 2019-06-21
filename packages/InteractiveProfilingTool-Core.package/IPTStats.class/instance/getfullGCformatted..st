helpers
getfullGCformatted: aDictionary
	
	| fullGCInfo |
	
	fullGCInfo:=  ((aDictionary at: #fullGCs) asString,
						 ' totalling ', 
						(aDictionary at: #fullGCTime),  
						' ms (', 
						(aDictionary at: #fullGCAbsoluteRunningTime),  
						'% uptime)').
						
								
	((aDictionary at: #fullGCs) = 0) ifFalse: [^fullGCInfo, '(avg ', 
							(((aDictionary at: #fullGCs)	/ (aDictionary at: #fullGCTime)) roundTo: 0.1), 
							' ms'.].
	
	^ fullGCInfo

	