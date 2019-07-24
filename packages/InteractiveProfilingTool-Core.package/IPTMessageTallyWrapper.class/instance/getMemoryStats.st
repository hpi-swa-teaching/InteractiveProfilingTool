gc stats access
getMemoryStats

	self getGcStats ifNil: [^ nil].
				
	^ Dictionary newFrom: { 
		#old -> self getOldSpaceEnd.
		#young -> (self getYoungSpaceEnd - self getOldSpaceEnd).
		#used -> self getYoungSpaceEnd.
		#free -> (self getMemoryEnd - self getYoungSpaceEnd)}