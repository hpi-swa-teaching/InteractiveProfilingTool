initialization
borderRaised
	"Change border to inset. Preserve width and color."
	
	self borderStyle: (
		BorderStyle raised
			width: self borderStyle width;
			baseColor: Color transparent;
			trackColorFrom: self;
			yourself).