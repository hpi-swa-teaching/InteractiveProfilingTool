information extraction
getGarbageCollectorStats

	| fullTime fullCount incrementalTime incrementalCount rootOverflows tenures fullRelativeTime incrementalRelativeTime uptime |
	
	self messageTally gcStats ifNil: [^ nil].
	
	uptime := self messageTally time.
	
	fullCount					:= self messageTally gcStats at: 7.
	fullTime						:= self messageTally gcStats at: 8.	
	fullRelativeTime 			:= (fullTime / uptime * 100) roundTo: 0.01.
					
	incrementalCount			:= self messageTally gcStats at: 9.
	incrementalTime			:=  self messageTally gcStats at: 10.
	incrementalRelativeTime 	:= (incrementalTime / uptime * 100) roundTo: 0.01.
			
	tenures						:= self messageTally gcStats at: 11.
	rootOverflows				:= self messageTally gcStats at: 22.
					
	^ Dictionary newFrom: {
		#full -> (Dictionary newFrom: {
			#count -> fullCount.
			#time -> fullTime.
			#relativeTime ->fullRelativeTime }).
		#incremental -> (Dictionary newFrom: {
			#count -> incrementalCount.
			#time -> incrementalTime.
			#relativeTime -> incrementalRelativeTime }).	
		#tenures -> tenures.
		#rootOverflows -> rootOverflows }
	
