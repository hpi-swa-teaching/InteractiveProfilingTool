menus
hasDropEnabledString

	^ (self dropEnabled
		ifTrue: ['<on>']
		ifFalse: ['<off>'])
		, 'drop in' translated