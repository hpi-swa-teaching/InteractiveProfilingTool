code browser
getSourceCodeFromMessage: aMessageTally

	| source class selector|
	
	(self classExists: aMessageTally)
		ifFalse: [^ self defaultErrorMessage].
	
	class := self getClass: aMessageTally.
	selector := self getSelector: aMessageTally.

	source := (self checkIfSelectorIsTypeDoIt: selector inClass: class) 
		ifTrue: [self defaultSourceCodeForDoITSelector]
		ifFalse: [class sourceMethodAt: selector ifAbsent:[self defaultErrorMessage]].
	
	^ source string
	
