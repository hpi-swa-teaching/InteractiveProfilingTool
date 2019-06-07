code browser
getSourceCodeFromMessage: aMessageTally

	| source class selector|
	
	(self checkIfClassExists: aMessageTally)
	ifFalse: [^ 'Missing'].
	
	class := self getClass: aMessageTally.
	selector := aMessageTally method selector.
	source := (class == UndefinedObject and: [selector == #DoIt]) 
		ifTrue: ['DoIt', String cr, String cr, 'Missing']
		ifFalse: [class sourceMethodAt: selector ifAbsent:['Missing']].
	
	^ source string
	
