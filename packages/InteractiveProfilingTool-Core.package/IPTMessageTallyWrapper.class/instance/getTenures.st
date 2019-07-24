gc stats access
getTenures
	
	self getGcStats ifNil: [^ nil].
	
	^ self getGcStats  at: 11