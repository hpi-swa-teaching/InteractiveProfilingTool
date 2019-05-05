submenu - tools
metacelloMenuItemOn: menu 
	menu addItem:
		[ : item | item
			 contents: 'Metacello' translated ;
			 help: 'Install Metacello' translated ;
			 icon: (self colorIcon: Color lightGray) ;
			 target: Installer ;
			 selector: #ensureRecentMetacello ]