accessing
borderWidth: aNumber
	"Sets the width of the border in the current border style. If there is no border yet, set up a simple one so that the user can actually see the border width."

	self borderStyle width = aNumber ifTrue: [^ self].
	
	self borderStyle style = #none
		ifTrue: [^ self borderStyle: (BorderStyle simple width: aNumber; yourself)].
	
	self borderStyle width: aNumber.
	self layoutChanged; changed.