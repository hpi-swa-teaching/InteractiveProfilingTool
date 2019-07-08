toolbuilder
buildTreePanelWith: aBuilder

	| filterPanelSpec treeSpec |
	
	filterPanelSpec := self buildFilterPanelWith: aBuilder. 
	filterPanelSpec frame: self filterPanelFrame.
	
	treeSpec := self buildTreeWith: aBuilder. 
	treeSpec frame: self treeFrame.
	
	^ aBuilder pluggablePanelSpec new
		children: { filterPanelSpec. treeSpec }