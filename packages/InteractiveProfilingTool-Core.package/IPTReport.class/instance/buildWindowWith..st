toolbuilder
buildWindowWith: aBuilder

	| windowSpec treePanelSpec codePanelSpec |
	
	treePanelSpec := self buildTreePanelWith: aBuilder.
	treePanelSpec frame: self treePanelFrame.

	codePanelSpec := self buildCodePaneWith: aBuilder.
	codePanelSpec frame: self codePanelFrame.
	
	windowSpec := super buildWindowWith: aBuilder.
	windowSpec children: { treePanelSpec. codePanelSpec }.
	
	^ windowSpec