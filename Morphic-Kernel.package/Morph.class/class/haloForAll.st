preferences
haloForAll

	<preference: 'Offer Halo for All Morphs'
		categoryList: #(Morphic)
		description: 'If enabled, there will be a halo provided for any morph after a certain input gesture is detected, which is usually a BLUE (middle) mouse click.'
		type: #Boolean>
	^ HaloForAll ifNil: [true]