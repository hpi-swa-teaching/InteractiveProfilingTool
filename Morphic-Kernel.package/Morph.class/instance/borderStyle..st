accessing
borderStyle: aBorderStyle

	aBorderStyle = self borderStyle ifTrue: [^ self].
	
	"If we cannot draw the new border, accept at least its color and width."
	((self canDrawBorder: aBorderStyle) or: [aBorderStyle isNil])
		ifTrue: [self setProperty: #borderStyle toValue: aBorderStyle]
		ifFalse: [
			self borderStyle
				width: aBorderStyle width;
				baseColor: aBorderStyle baseColor].

	self borderStyle trackColorFrom: self.

	self
		layoutChanged;
		changed.