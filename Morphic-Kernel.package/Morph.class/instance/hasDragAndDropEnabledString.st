menus
hasDragAndDropEnabledString
	"Answer a string to characterize the drag & drop status of the  
	receiver"
	^ (self dragNDropEnabled
		ifTrue: ['<on>']
		ifFalse: ['<off>'])
		, 'drag and drop enabled' translated