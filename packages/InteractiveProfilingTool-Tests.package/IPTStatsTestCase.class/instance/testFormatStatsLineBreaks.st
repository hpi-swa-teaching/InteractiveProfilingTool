tests
testFormatStatsLineBreaks

	| lines formatted |

	lines := {
		'Warum hat der Kapitän das U-Boot versenkt?'.
		'Es war Tag der offenen Tür.' }.

	formatted := model formatStats: lines withHeading: 'Noch ein Witz '.
	
	self assert: 3 equals: (formatted lineCount)