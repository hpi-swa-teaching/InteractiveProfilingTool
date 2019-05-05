menus
hasDragEnabledString

	^ (self dragEnabled
		ifTrue: ['<on>']
		ifFalse: ['<off>'])
		, 'drag out' translated