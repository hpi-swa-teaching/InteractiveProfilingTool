helpers
selectorIsDoIt

	^ self getClass = UndefinedObject and: [self getSelector = #DoIt]