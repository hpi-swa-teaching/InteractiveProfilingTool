preferences
metaMenuForAll

	<preference: 'Offer Meta Menu for All Morphs'
		categoryList: #(Morphic)
		description: 'If enabled, there will be a meta menu provided for any morph after a certain input gesture is detected, which is usually a CTRL+Any mouse click.'
		type: #Boolean>
	^ MetaMenuForAll ifNil: [true]