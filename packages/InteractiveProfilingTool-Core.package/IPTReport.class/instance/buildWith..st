toolbuilder
buildWith: aBuilder

	| window |
  
	window := aBuilder build: (self buildWindowWith: aBuilder).
	self expandAllNodesForTreeIn: window.
  
	^ window