code browser
changeSourceCodeTo: aStringContainingSourceCode notifying: aController

	| category class selector |
	
	class := self selectedClass ifNil: [false].
	category := self getCategoryForMethod: self selectedMessageName inClass: class.

	selector := self 
		changeSourceCode: aStringContainingSourceCode 
		inClass: class 
		inCategory: category 
		inform: aController.

	^ self compilationSucceededFor: selector