browsing
browseMethodCall
	
	| class selector |
	
	class := self getClass: self currentSelection.
	selector := self getSelectorName: self currentSelection.
	
	^ ToolSet browse: class selector: selector.
	

	