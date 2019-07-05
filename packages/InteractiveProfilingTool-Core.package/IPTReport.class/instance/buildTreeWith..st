toolbuilder
buildTreeWith: aBuilder

	^ aBuilder pluggableTreeSpec new
					model: self;
					nodeClass: IPTTreeItemWrapper;
					roots: #userCallsRoots;
					menu: #genericMenu:;
					getSelected: #currentSelection;
					setSelected: #currentSelection:;
					keyPress: #handleKey:from:event:;
					yourself