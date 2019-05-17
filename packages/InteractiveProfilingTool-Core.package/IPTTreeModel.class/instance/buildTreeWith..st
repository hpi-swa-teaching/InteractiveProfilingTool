toolbuilder
buildTreeWith: aBuilder

	^ aBuilder pluggableTreeSpec new
					model: self; 
					roots: #roots;
					getChildren: #getChildrenWithRelevantPerformanceImpact:;
					hasChildren: #hasChildrenWithRelevantPerformanceImpact:;
					label: #label:;
					frame: self getFrame;
					yourself