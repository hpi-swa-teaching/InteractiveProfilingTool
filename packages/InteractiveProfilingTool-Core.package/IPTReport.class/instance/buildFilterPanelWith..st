toolbuilder
buildFilterPanelWith: aBuilder

	| statsButtonSpec filterInputSpec |
	
	statsButtonSpec := self buildStatsButtonWith: aBuilder.
	statsButtonSpec frame: self statsButtonFrame.
	
	filterInputSpec := self buildFilterInputWith: aBuilder.
	filterInputSpec frame: self filterInputFrame.
	
	^ aBuilder pluggablePanelSpec new
		children: { statsButtonSpec. filterInputSpec }