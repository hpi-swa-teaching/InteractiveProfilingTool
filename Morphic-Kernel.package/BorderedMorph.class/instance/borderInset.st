initialization
borderInset
	"Change border to inset. Preserve width and color."
	
	self borderStyle: (
		BorderStyle inset
			width: self borderStyle width;
			baseColor: Color transparent;
			trackColorFrom: self;
			yourself).