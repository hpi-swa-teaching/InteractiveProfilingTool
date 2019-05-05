submenu - tools
gitInfrastructureMenuItemOn: menu 
	menu addItem:
		[ : item | item
			 contents: 'Git Infrastructure' translated ;
			 help: 'Load tools for accessing github repositories.' translated ;
			 icon: (self colorIcon: Color lightGray) ;
			 target: Installer ;
			 selector: #installGitInfrastructure ]