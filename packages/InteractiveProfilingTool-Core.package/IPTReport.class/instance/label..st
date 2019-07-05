model access
label: aNode

	| selector label color|
	
	selector := aNode getSelectorName.
	label := (aNode getLabel) asText.
	color := TextColor gray.
	label addAttribute: color.

	"(selector includesSubstring: self selectorFilter)
		ifFalse: [ (aNode getLabel) asText addAttribute: TextColor gray; yourself]."
		
	^ label 