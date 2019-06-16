model access
label: aMessageTally

	| selector class timeString |

	selector := self getSelectorName: aMessageTally.
	class := (self getClass: aMessageTally) asString.
	timeString := self getTimeString: aMessageTally.

	^ (timeString, ' ', class, ' >> ', selector)