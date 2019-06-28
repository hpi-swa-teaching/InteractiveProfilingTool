helpers
formatTimeStringWithAbsoluteTime: anAbsoluteTimeValue andRelativeTime: aRelativeTimeValue

	^ (aRelativeTimeValue printShowingDecimalPlaces: 1) asString , ' % {' , anAbsoluteTimeValue printShowingDecimalPlaces: 1, ' ms}'