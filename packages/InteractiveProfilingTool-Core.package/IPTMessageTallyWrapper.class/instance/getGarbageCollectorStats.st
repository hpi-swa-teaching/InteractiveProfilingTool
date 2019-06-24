information extraction
getGarbageCollectorStats

	"The Squeak garbage collector follows the Mark-Sweep-Compact GC pattern. Squeak
	divides the memory into two regions, the young and the old space. The young space
	contains short-lived objects, the old space contains long-lived objects (tenures).
	
	There are two different garbage collection methods: Full GC and Incremental GC. An
	incremental GC collects garbage from the young space only, while a full GC runs in
	both regions."

	| gcStats uptime fullTime fullCount fullRelativeTime incrementalTime incrementalCount incrementalRelativeTime tenures rootOverflows |
	
	self messageTally gcStats ifNil: [^ nil].
	
	"For more information on the GC stats array, please refer to the method comment in
	SmalltalkImage >> vmParameterAt: or the documentation under Squeak Menu >
	About Squeak > VM Parameters"
	gcStats := self messageTally gcStats.
	
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
	
