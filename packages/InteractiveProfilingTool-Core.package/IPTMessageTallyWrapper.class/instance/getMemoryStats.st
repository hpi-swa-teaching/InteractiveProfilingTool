information extraction
getMemoryStats

	| stats memoryEnd oldSpaceEnd youngSpaceEnd |
	
	self messageTally gcStats ifNil: [^ nil].
	
	oldSpaceEnd			:= self messageTally gcStats at: 1.
	youngSpaceEnd		:= self messageTally gcStats at: 2.
	memoryEnd			:= self messageTally gcStats at: 3.
				
	stats := Dictionary newFrom: { 
		#old		-> oldSpaceEnd.
		#young	-> (youngSpaceEnd - oldSpaceEnd).
		#used		-> youngSpaceEnd.
		#free		-> (memoryEnd - youngSpaceEnd)}.
				
	^ stats
		
	
	
	
