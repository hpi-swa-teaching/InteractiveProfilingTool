gc stats access
getIncrementalRelativeTime

	^ (self getIncrementalTime / self getUptime * 100) roundTo: 1