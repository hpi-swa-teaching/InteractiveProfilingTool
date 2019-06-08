code browser
contents: aString notifying: aController 
	"Compile the code in aString. Notify aController of any syntax errors. 
	Answer false if the compilation fails. Otherwise, if the compilation 
	created a new method, deselect the current selection. Then answer true."

	| category selector class oldSelector |
	self okayToAccept ifFalse: [^ false].
	self setClassAndSelectorIn: [:c :os | class := c.  oldSelector := os].
	class ifNil: [^ false].

	category := self getCategoryFromSelector: oldSelector inClass: class.
	selector := self changeSourceCode: aString 
						inClass: class 
						inCategory: category 
						inform: aController.

	(self checkIfCompilationFailed: selector) ifTrue: [^ false].
	self setContentInCodeHolder:  aString.
	self changed: #annotation.
	^ true