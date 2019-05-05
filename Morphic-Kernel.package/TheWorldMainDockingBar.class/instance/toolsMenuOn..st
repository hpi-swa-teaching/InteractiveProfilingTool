construction
toolsMenuOn: aDockingBar 

	aDockingBar addItem: [ :item |
		item
			contents: 'Tools' translated;
			addSubMenu: [ :menu | 
				self
					browserMenuItemOn: menu;
					workspaceMenuItemOn: menu;
					transcriptMenuItemOn: menu;
					testRunnerMenuItemOn: menu;
					methodFinderMenuItemOn: menu;
					messageNamesMenuItemOn: menu.
				menu addLine.
				self 
					simpleChangeSorterMenuItemOn: menu;
					dualChangeSorterMenuItemOn: menu;
					monticelloBrowserMenuItemOn: menu;
					monticelloConfigurationsMenuItemOn: menu ;
					metacelloMenuItemOn: menu ;
					gitInfrastructureMenuItemOn: menu.
				menu addLine.
				self
					processBrowserMenuItemOn: menu;
					preferenceBrowserMenuItemOn: menu;
					fileListMenuItemOn: menu.
			] ]