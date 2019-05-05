submenu - tools
messageNamesMenuItemOn: menu 

	menu addItem: [:item | 
		item 
			contents: 'Message Names' translated;
			help: 'Open the Message Names tool' translated;
			icon: (self colorIcon: MessageNames basicNew windowColorToUse);
			target: StandardToolSet;
			selector: #openMessageNames]