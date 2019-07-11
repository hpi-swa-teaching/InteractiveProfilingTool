gc stats access
getFullRelativeTime

	^ (self getFullTime / self getUptime * 100) roundTo: 1