as yet unclassified
label: aTully
	|aSelector aClass percentage time|

	aSelector := (aTully method selector) asString.
	aClass := (aTully method methodClass) asString.
	percentage := aTully tally asFloat / total * 100.0.
	time := (percentage printShowingDecimalPlaces: 1) asString , '% {' , ((percentage * totalTime / 100) rounded) asString, 'ms} '. 
	^(time, aClass, ' >> ', aSelector)