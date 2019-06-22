formatting
formatStats: aCollection withHeading: aString

	| heading body formattedStats |
	
	heading := Text fromString: aString.
	heading allBold.
	
	body := aCollection collect: [ :line | Text fromString: line ].
	body := body joinSeparatedBy: (String cr).

	formattedStats := Text new
		append: heading;
		append: String cr;
		append: body.
		
	 ^ formattedStats