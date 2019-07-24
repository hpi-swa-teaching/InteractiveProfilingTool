toolbuilder
buildTreeWith: aBuilder

	^ aBuilder pluggableTreeSpec new
		name: #resultsTree;
		model: self;
		nodeClass: IPTTreeItemWrapper;
		roots: #userCallsRootAsCollection;
		menu: #genericMenu:;
		getSelected: #currentSelection;
		setSelected: #currentSelection:;
		keyPress: #handleKey:from:event: