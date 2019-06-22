helpers
getAvgFullGCInfo: aDictionary 

	^ '(avg ', (((aDictionary at: #fullGCs) / (aDictionary at: #fullGCTime)) roundTo: 0.1), ' ms'.