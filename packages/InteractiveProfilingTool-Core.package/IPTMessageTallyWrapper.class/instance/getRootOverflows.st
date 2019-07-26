gc stats access
getRootOverflows
	
	self getGcStats ifNil: [^ nil].

	^ self getGcStats at: 22