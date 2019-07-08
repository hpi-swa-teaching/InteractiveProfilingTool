toolbuilder
buildWith: aBuilder

	| windowSpec treePanelSpec codePanelSpec |
	
	treePanelSpec := self buildTreePanelWith: aBuilder.
	treePanelSpec frame: self treePanelFrame.

	codePanelSpec := self buildCodePaneWith: aBuilder.
	codePanelSpec frame: self codePanelFrame.
	
	windowSpec := self buildWindowWith: aBuilder.
	windowSpec children: { treePanelSpec. codePanelSpec }.
		
	^ aBuilder build: windowSpec