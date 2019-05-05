initialization
borderSimple
	"Change border to simple. Preserve width and color."
	
	self borderStyle: (
		BorderStyle simple
			width: self borderStyle width;
			baseColor: self borderStyle color; "Override any raised/inset specials."
			trackColorFrom: self;
			yourself).