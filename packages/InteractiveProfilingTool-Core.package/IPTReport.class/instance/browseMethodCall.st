browsing
browseMethodCall
	
	| class selector |
	
	class := self currentSelection getClass.
	selector := self currentSelection getSelectorName.
	
	^ ToolSet browse: class selector: selector.
	

	