menus
addExportMenuItems: aMenu hand: aHandMorph
	"Add export items to the menu"

	aMenu ifNotNil:
		[ | aSubMenu |
		aSubMenu := MenuMorph new defaultTarget: self.
		aSubMenu add: 'BMP file' translated action: #exportAsBMP.
		aSubMenu add: 'GIF file' translated action: #exportAsGIF.
		aSubMenu add: 'JPEG file' translated action: #exportAsJPEG.
		aSubMenu add: 'PNG file' translated action: #exportAsPNG.
		(self respondsTo: #exportAsEPS) ifTrue: [
			aSubMenu add: 'EPS file' translated action: #exportAsEPS].
		aMenu add: 'export...' translated subMenu: aSubMenu]
