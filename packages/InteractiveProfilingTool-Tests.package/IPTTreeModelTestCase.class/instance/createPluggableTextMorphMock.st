helpers
createPluggableTextMorphMock

	|pluggableTextMorph textMorph|
	
	textMorph := TextMorphForEditViewMock new
		setEditor: SmalltalkEditorMock new.
	pluggableTextMorph := PluggableTextMorphMock new
		setTextMorph: textMorph.
	
	^ pluggableTextMorph