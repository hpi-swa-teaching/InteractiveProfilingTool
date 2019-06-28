toolbuilder
buildTreeWith: aBuilder

	^ aBuilder pluggableTreeSpec new
					model: self; 
					roots: #roots;
					getChildren: #getChildrenWithRelevantPerformanceImpact:;
					hasChildren: #hasChildrenWithRelevantPerformanceImpact:;
					icon: #getIcon:;
					label: #label:;
					menu: #genericMenu:;
					getSelected: #currentSelection;
					setSelected: #currentSelection:;
					keyPress: #handleKey:from:event:;
					name: #tree;
					yourself