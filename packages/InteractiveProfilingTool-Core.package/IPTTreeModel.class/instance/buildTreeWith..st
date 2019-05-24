toolbuilder
buildTreeWith: aBuilder

	^ aBuilder pluggableTreeSpec new
					model: self; 
					roots: #roots;
					getChildren: #getChildrenWithRelevantPerformanceImpact:;
					hasChildren: #hasChildrenWithRelevantPerformanceImpact:;
					label: #label:;
					frame: self getFrame;
					menu: #genericMenu:;
					getSelected: #currentSelection;
					setSelected: #currentSelection:;
					keyPress: #explorerKey:from:event:;
					yourself