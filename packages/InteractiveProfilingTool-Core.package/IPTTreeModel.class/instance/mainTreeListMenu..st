as yet unclassified
mainTreeListMenu: aMenu
	"what is this?"
	<treeListMenu>
	
	"what is this?"
	aMenu addStayUpItemSpecial.

	aMenu addList: #(
		"add keyboard shortcut"
		('browse it' browseMethodCall )).
	^ aMenu