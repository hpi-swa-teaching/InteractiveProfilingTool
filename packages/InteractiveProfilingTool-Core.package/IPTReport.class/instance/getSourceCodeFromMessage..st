code browser
getSourceCodeFromMessage: aMessageTallyWrapper

	| source class selector|
	
	(aMessageTallyWrapper classExists)
		ifFalse: [^ self classMissingMessage].
	
	class := aMessageTallyWrapper getClass.
	selector := aMessageTallyWrapper getSelector.

	source := (aMessageTallyWrapper selectorIsDoIt) 
		ifTrue: [self defaultSourceCodeForDoITSelector]
		ifFalse: [class sourceMethodAt: selector ifAbsent:[self methodMissingMessage]].
	
	^ source string
	
