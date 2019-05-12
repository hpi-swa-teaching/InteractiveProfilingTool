toolbuilder
buildTreeWith: aBuilder

	^ aBuilder pluggableTreeSpec new
					model: self; 
					roots: #roots;
					getChildren: #getChildren:;
					hasChildren: #hasChildren:;
					label: #label:;
					frame: ( LayoutFrame new 
								leftFraction: 0 offset: 0;
								topFraction: 0 offset: 0;
								rightFraction: 1 offset: 0;
								bottomFraction: 1 offset: 0);
					yourself