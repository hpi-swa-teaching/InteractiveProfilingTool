as yet unclassified
formatStats: aCollection withHeading: aString

	| heading body formattedStats |
	
	heading := Text fromString: aString.
	heading allBold.
	
	body := aCollection
		replace: [ :line | Text fromString: line ];
		joinSeparatedBy: (String cr).

	formattedStats := Text new
		append: heading;
		append: String cr;
		append: body.
		
	 ^ formattedStats