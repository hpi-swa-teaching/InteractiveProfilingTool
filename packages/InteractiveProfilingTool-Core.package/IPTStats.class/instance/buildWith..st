toolbuilder
buildWith: aBuilder

	^ aBuilder build: (self getWindowSpecWith: aBuilder) 