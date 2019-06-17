code browser
getSourceCodeFromMessage: aNode

	| source class selector|
	
	(self classExists: aNode)
		ifFalse: [^ self defaultErrorMessage].
	
	class := aNode getClass.
	selector := aNode getSelector.

	source := (self checkIfSelectorIsTypeDoIt: selector inClass: class) 
		ifTrue: [self defaultSourceCodeForDoITSelector]
		ifFalse: [class sourceMethodAt: selector ifAbsent:[self defaultErrorMessage]].
	
	^ source string
	
