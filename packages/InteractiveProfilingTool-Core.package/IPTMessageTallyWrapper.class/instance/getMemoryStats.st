as yet unclassified
getMemoryStats

	| stats memoryEnd oldSpaceEnd youngSpaceEnd |
	
	self messageTally gcStats ifNil: [^ nil].
	
	stats := Dictionary new.
	oldSpaceEnd			:= self messageTally gcStats at: 1.
	youngSpaceEnd		:= self messageTally gcStats at: 2.
	memoryEnd			:= self messageTally gcStats at: 3.
				
	stats 
		add: #old		-> oldSpaceEnd;
		add: #young	-> (youngSpaceEnd - oldSpaceEnd);
		add: #used		-> youngSpaceEnd;
		add: #free		-> (memoryEnd - youngSpaceEnd).
				
	^ stats
		
	
	
	
