toolbuilder
getWindowSpecWith: aBuilder

	| spec |

	spec := self buildWindowWith: aBuilder specs: {
		(0@0 corner: 1@1) -> [ self getTextSpecWith: aBuilder ]}.
		
	spec
		label: 'Stats';
		extent: 300@400.

	^ spec