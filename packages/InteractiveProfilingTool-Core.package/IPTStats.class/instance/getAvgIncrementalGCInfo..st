helpers
getAvgIncrementalGCInfo: aDictionary 

	^ ', avg ', (((aDictionary at: #incrementalGCTime) / (aDictionary at: #incrementalGCs)) roundTo: 0.1), ' ms '.