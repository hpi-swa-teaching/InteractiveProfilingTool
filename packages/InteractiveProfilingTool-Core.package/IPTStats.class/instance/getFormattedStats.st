formatting
getFormattedStats

	| sections |

	sections := {
		self formatMemoryStats.
		self formatGarbageCollectionStats.
		self formatLeaves}.
	
	^ sections reduce: [ :combined :section |
		combined append: (String cr, String cr).
		combined append: section ]