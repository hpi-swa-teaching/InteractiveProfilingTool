toolbuilder
buildTreeWith: aBuilder

	^ aBuilder pluggableTreeSpec new
					model: self; 
					roots: #roots;
					getRelevantChildren: #getRelevantChildren:;
					hasRelevantChildren: #hasRelevantChildren:;
					label: #label:;
					frame: ( LayoutFrame new 
								leftFraction: 0 offset: 0;
								topFraction: 0 offset: 0;
								rightFraction: 1 offset: 0;
								bottomFraction: 1 offset: 0);
					yourself