as yet unclassified
mainTreeListMenu: aMenu
	<treeListMenu>
	
	aMenu addStayUpItemSpecial.

	aMenu addList: #(
		"TODO: add keyboard shortcut"
		('browse it (b)' browseMethodCall )).
	^ aMenu