accessing
borderStyle
	^ self valueOfProperty: #borderStyle ifAbsentPut: [BorderStyle default]