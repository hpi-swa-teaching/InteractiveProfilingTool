accessing
hasTranslucentColor
	"Answer true if this any of this morph is translucent but not transparent."

	(self color isColor and: [self color isTranslucentColor]) ifTrue: [^ true].
	(self borderColor isColor and: [self borderColor isTranslucentColor]) ifTrue: [^ true].
	^ false
