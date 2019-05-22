model access
label: aMessageTally

	| selector class timeString |

	selector := self getSelector: aMessageTally.
	class := self getClass: aMessageTally.
	timeString := self getTimeString: aMessageTally.

	^ (timeString, ' ', class, ' >> ', selector)