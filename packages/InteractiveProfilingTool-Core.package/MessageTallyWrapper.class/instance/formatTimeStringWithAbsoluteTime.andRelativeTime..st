helpers
formatTimeStringWithAbsoluteTime: anAbsoluteTimeValue andRelativeTime: aRelativeTimeValue

	^ (aRelativeTimeValue printShowingDecimalPlaces: 1) asString , ' % {' , anAbsoluteTimeValue asString, ' ms}'