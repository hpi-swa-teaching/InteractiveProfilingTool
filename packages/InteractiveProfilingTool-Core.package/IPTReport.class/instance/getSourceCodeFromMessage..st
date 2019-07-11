code browser
getSourceCodeFromMessage: aNode

	| source class selector|
	
	(self classExists: aNode)
		ifFalse: [^ self classMissingErrorMessage].
	
	class := aNode getClass.
	selector := aNode getSelector.

	source := (aNode selectorIsDoIt) 
		ifTrue: [self defaultSourceCodeForDoITSelector]
		ifFalse: [class sourceMethodAt: selector ifAbsent:[self methodMissingErrorMessage]].
	
	^ source string
	
