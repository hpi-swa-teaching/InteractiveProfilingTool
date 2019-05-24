as yet unclassified
browseMethodCall
	
	| class selector |
	
	class := self getClass: self currentSelection.
	selector := self getSelector: self currentSelection.
	
	^ ToolSet browse: class selector: selector.
	

	