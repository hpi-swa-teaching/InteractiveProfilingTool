information extraction
getLabel

	| selector class timeString |

	selector := self getSelector.
	class := self getClass.
	timeString := self getTimeString.

	^ (timeString, ' ', class, ' >> ', selector)