helpers
getAvgTensuresGCInfo: aDictionary 

	^ '(avg ', (((aDictionary at: #incrementalGCs) / (aDictionary at: #numberOfObjectsInOldSpace)) roundTo: 0.1), ' GCs/tenure)'.