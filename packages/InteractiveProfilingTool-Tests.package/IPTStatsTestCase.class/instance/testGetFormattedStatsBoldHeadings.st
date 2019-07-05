tests
testGetFormattedStatsBoldHeadings

	| formatted boldTextPosition |

	formatted := model getFormattedStats.
	boldTextPosition := formatted find: (TextEmphasis bold).
	
	self assert: (boldTextPosition notNil)