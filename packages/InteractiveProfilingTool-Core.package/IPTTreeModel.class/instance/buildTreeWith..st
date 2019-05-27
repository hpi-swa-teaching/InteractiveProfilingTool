toolbuilder
buildTreeWith: aBuilder

	^ aBuilder pluggableTreeSpec new
					model: self; 
					roots: #roots;
					getChildren: #getChildrenWithRelevantPerformanceImpact:;
					hasChildren: #hasChildrenWithRelevantPerformanceImpact:;
					icon: #getIcon:;
					label: #label:;
					frame: self getFrame;
					yourself