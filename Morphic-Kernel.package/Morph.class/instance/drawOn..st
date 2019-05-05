drawing
drawOn: aCanvas

	self wantsRoundedCorners
		ifTrue: [aCanvas frameAndFillRoundRect: self bounds radius: self cornerRadius fillStyle: self fillStyle borderStyle: self borderStyle]
		ifFalse: [aCanvas frameAndFillRectangle: self bounds fillStyle: self fillStyle borderStyle: self borderStyle].
	
