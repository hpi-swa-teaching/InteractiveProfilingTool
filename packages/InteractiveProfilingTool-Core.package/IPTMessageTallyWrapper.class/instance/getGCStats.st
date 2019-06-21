as yet unclassified
getGCStats

	| stats fullGCTime fullGCs incrGCTime incrGCs rootOverflows tenureCount fullAbsoluteRunningTime incrementalAbsoluteRunningTime |
	
	self messageTally gcStats ifNil: [^ nil].
	
	stats := Dictionary new.
	fullGCs				:= self messageTally gcStats at: 7.
	fullGCTime			:= self messageTally gcStats at: 8.
	incrGCs				:= self messageTally gcStats at: 9.
	incrGCTime			:=  self messageTally gcStats at: 10.
	tenureCount			:= self messageTally gcStats at: 11.
	rootOverflows		:= self messageTally gcStats at: 22.
	fullAbsoluteRunningTime := self absoluteRuntimeGCGeneration: fullGCTime.
	incrementalAbsoluteRunningTime := self absoluteRuntimeGCGeneration: incrGCTime.
			
	stats 
		add: #fullGCs											-> fullGCs;
		add: #fullGCTime										-> fullGCTime;
		add: #incrementalGCs 								-> incrGCs;
		add: #incrementalGCTime 						-> incrGCTime;
		add: #fullGCAbsoluteRunningTime				-> fullAbsoluteRunningTime;		
		add: #incrementalGCAbsoluteRunningTime 	-> incrementalAbsoluteRunningTime; 	
		add: #numberOfObjectsInOldSpace				-> tenureCount;
		"add: #AvgNumberOfObjectsInOldSpace 		-> (incrGCs / tenureCount);"	
		add: #rootOverflows									-> rootOverflows.
	
	^ stats
	
