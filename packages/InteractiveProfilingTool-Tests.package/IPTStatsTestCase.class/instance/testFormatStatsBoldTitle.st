tests
testFormatStatsBoldTitle

	| lines formatted attribute |

	lines := {
		'Was fragt der Kassierer einen Dalmatinier an der Kasse?'.
		'»Sammeln Sie Punkte?«' }.

	formatted := model formatStats: lines withHeading: 'Ein Witz'.
	attribute := (formatted attributesAt: 1) first.
	
	self assert: (formatted beginsWith: 'Ein Witz').
	self assert: (attribute = TextEmphasis bold)