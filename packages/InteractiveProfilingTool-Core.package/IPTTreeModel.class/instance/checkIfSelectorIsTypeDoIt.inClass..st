code browser
checkIfSelectorIsTypeDoIt: aSelector inClass: aClass
	
	^ aClass = UndefinedObject and: [aSelector = #DoIt]