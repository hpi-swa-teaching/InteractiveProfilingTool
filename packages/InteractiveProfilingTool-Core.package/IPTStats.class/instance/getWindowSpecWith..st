toolbuilder
getWindowSpecWith: aBuilder

	| spec |

	spec := self buildWindowWith: aBuilder specs: {
		(self boundsOfTextWindow) -> [self getTextSpecWith: aBuilder]}.
		
	^ spec
		label: 'GC Stats';
		extent: 300@400