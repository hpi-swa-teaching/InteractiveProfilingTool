as yet unclassified
makeTreeSpec
	| spec |
	spec := ToolBuilder new pluggableTreeSpec new.
	spec name: #tree.
	spec model: self.
	spec roots: #getRoot.
	spec getChildren: #getChildrenOf:.
	spec hasChildren: #hasChildren:.
	spec label: #getLabelOf:.

	^spec