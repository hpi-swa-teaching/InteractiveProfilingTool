accessing
getFormattedStats

	| sections |

	sections := {
		self formatMemoryStats.
		self formatGarbageCollectorStats.
		self formatLeaves}.
		
	^ sections joinSeparatedBy: (String cr, String cr).
	