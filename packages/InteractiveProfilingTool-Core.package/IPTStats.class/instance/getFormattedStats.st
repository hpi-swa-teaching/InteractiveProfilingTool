formatting
getFormattedStats

	| sections |

	sections := {
		self formatMemoryStats.
		self formatGarbageCollectorStats.
		self formatLeaves}.
	
	^ sections reduce: [ :combined :section |
		combined append: (String cr, String cr).
		combined append: section ].