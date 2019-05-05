submenu - extras
themesAndWindowColorsOn: menu
	| themes |
	menu addItem:[:item|
		item
			contents: (Model useColorfulWindows ifTrue: ['<yes>'] ifFalse: ['<no>']), 'Colorful Windows' translated;
			target: self;
			selector: #toggleColorfulWindows].
	menu addItem:[:item|
		item
			contents: (SystemWindow gradientWindow not ifTrue: ['<yes>'] ifFalse: ['<no>']), 'Flat Widget Look' translated;
			target: self;
			selector: #toggleGradients].
	menu addLine.
	menu addItem:[:item |
		item
			contents: (((Preferences valueOfFlag: #menuAppearance3d ifAbsent: [false]) and: [Morph useSoftDropShadow]) ifTrue: ['<yes>'] ifFalse: ['<no>']), 'Soft Shadows' translated;
			target: self;
			selector: #toggleSoftShadows].
	menu addItem:[:item |
		item
			contents: (((Preferences valueOfFlag: #menuAppearance3d ifAbsent: [false]) and: [Morph useSoftDropShadow not]) ifTrue: ['<yes>'] ifFalse: ['<no>']), 'Hard Shadows' translated;
			target: self;
			selector: #toggleHardShadows].
	menu addLine.
	menu addItem:[:item |
		item
			contents: (SystemWindow roundedWindowCorners ifTrue: ['<yes>'] ifFalse: ['<no>']), 'Rounded Window/Dialog/Menu Look' translated;
			target: self;
			selector: #toggleRoundedWindowLook].
	menu addItem:[:item |
		item
			contents: (PluggableButtonMorph roundedButtonCorners ifTrue: ['<yes>'] ifFalse: ['<no>']), 'Rounded Button/Scrollbar Look' translated;
			target: self;
			selector: #toggleRoundedButtonLook].
	themes := UserInterfaceTheme allThemes asArray sort: #name ascending.	
	themes ifEmpty: [ 
		menu addItem: [ :item | 
			item
				contents: '(No UI themes found.)' translated;
				isEnabled: false ] ].
	themes do: [ :each |
		menu addItem: [ :item |
			item 
				contents: (UserInterfaceTheme current == each ifTrue: ['<yes>'] ifFalse: ['<no>']), each name;
				target: each;
				selector: #apply ] ].
	menu
		addLine ;
		add: 'Increase Font Size' translated target: Preferences selector: #increaseFontSize ;
		add: 'Decrease Font Size' translated target: Preferences selector: #decreaseFontSize ;
		addLine.
	menu
		addLine;
		add: 'Restore UI Theme Background' translated target: self selector: #restoreThemeBackground;
		add: 'Edit Current UI Theme...' translated target: self selector: #editCurrentTheme.