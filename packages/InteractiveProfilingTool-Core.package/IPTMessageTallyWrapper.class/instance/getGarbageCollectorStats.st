as yet unclassified
getGarbageCollectorStats

	| stats fullGCTime fullGCs incrementalGCTime incrementalGCs rootOverflows tenureCount fullAbsoluteRunningTime incrementalAbsoluteRunningTime |
	
	self messageTally gcStats ifNil: [^ nil].
	
	stats := Dictionary new.
	
	fullGCs					:= self messageTally gcStats at: 7.
	fullGCTime				:= self messageTally gcStats at: 8.
	incrementalGCs			:= self messageTally gcStats at: 9.
	incrementalGCTime		:=  self messageTally gcStats at: 10.
	tenureCount			:= self messageTally gcStats at: 11.
	rootOverflows			:= self messageTally gcStats at: 22.
	fullAbsoluteRunningTime 			:= self absoluteRuntimeGCGeneration: fullGCTime.
	incrementalAbsoluteRunningTime 	:= self absoluteRuntimeGCGeneration: incrementalGCTime.
			
	stats 
		add: #fullGCs									-> #(fullGCs fullGCTime relativeFullGCTime);
		add: #fullGCTime								-> fullGCTime;
		add: #incrementalGCs 							-> incrementalGCs;
		add: #incrementalGCTime 						-> incrementalGCTime;
		add: #fullGCAbsoluteRunningTime				-> fullAbsoluteRunningTime;		
		add: #incrementalGCAbsoluteRunningTime 	-> incrementalAbsoluteRunningTime; 	
		add: #numberOfObjectsInOldSpace			-> tenureCount;
		add: #rootOverflows							-> rootOverflows.
	
	^ stats
	
