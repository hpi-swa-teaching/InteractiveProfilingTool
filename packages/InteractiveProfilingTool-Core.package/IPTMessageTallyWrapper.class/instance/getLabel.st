messageTally access
getLabel

	| selector class timeString |

	selector := self getSelectorName.
	class := self getClassName.
	timeString := self getTimeString.

	^ (timeString, ' ', class, ' >> ', selector)