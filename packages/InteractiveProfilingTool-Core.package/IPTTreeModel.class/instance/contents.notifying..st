code browser
contents: aString notifying: aController 
	"(This message is derived from MessageSet)
	Compile the code in aString. Notify aController of any syntax errors. 
	Answer false if the compilation fails. Otherwise, if the compilation 
	created a new method, deselect the current selection. Then answer true."

	| category selector class oldSelector |
	self okayToAccept ifFalse: [^ false].
	self setClassAndSelectorIn: [:c :os | class := c.  oldSelector := os].
	class ifNil: [^ false].
	
	"Normal method accept"
	category := class organization categoryOfElement: oldSelector.
	selector := class compile: aString
				classified: category
				notifying: aController.
	selector == nil ifTrue: [^ false].
	self noteAcceptanceOfCodeFor: selector.
	selector == oldSelector ifFalse:
		[self reformulateListNoting: selector].
	contents := aString copy.
	self changed: #annotation.
	^ true