initialization
borderInitialize
	"initialize the receiver state related to border"

	self borderStyle: (
		self defaultBorderStyle
			baseColor: self defaultBorderColor;
			width: self defaultBorderWidth;
			trackColorFrom: self;
			yourself).