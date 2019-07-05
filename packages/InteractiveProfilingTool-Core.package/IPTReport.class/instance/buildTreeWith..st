toolbuilder
buildTreeWith: aBuilder

	^ aBuilder pluggableTreeSpec new
					model: self;
					nodeClass: IPTTreeItemWrapper;
					roots: #userCallsRoots;
					getChildren: #getChildrenWithRelevantPerformanceImpact:;
					hasChildren: #hasChildrenWithRelevantPerformanceImpact:;
					icon: #getIcon:;
					label: #label:;
					menu: #genericMenu:;
					getSelected: #currentSelection;
					setSelected: #currentSelection:;
					keyPress: #handleKey:from:event:;
					yourself