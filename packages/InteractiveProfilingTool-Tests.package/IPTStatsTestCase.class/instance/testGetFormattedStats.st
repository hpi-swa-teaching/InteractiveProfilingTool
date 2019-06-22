tests
testGetFormattedStats

	| formatted sections |

	formatted := model getFormattedStats.
	sections := formatted splitBy: (String cr, String cr).
	
	self assert: 3 equals: sections size.