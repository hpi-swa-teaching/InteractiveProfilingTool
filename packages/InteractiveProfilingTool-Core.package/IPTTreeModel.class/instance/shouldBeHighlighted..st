model access
shouldBeHighlighted: aMessageTally

	^ self highlightingThreshold <= (self getRelativeTime: aMessageTally)
	