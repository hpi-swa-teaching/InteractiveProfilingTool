information extraction
getLabel: aTotalTimeValue

	| selector class timeString |

	selector := self getSelector.
	class := self getClass.
	timeString := self getTimeString: aTotalTimeValue.

	^ (timeString, ' ', class, ' >> ', selector)