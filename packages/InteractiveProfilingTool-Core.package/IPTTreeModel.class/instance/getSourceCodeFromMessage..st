code browser
getSourceCodeFromMessage: aMessageTally

	| source class selector|
	
	(self classExists: aMessageTally)
	ifFalse: [^ 'Missing'].
	
	class := self getClass: aMessageTally.
	selector := aMessageTally method selector.
	source := (self checkIfSelectorIsTypeDoIt: selector inClass: class) 
		ifTrue: [self defaultSourceCodeForDoITSelector]
		ifFalse: [class sourceMethodAt: selector ifAbsent:['Missing']].
	
	^ source string
	
