helpers
createPluggableTextMorphMock

	|pluggableTextMorph textMorph editor|
	
	pluggableTextMorph := PluggableTextMorphMock new. 
	textMorph := TextMorphForEditViewMock new. 
	editor := SmalltalkEditorMock new.

	textMorph setEditor: editor.
	pluggableTextMorph setTextMorph: textMorph.
	
	^ pluggableTextMorph