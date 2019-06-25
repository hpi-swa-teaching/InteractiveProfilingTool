formatting
formatTenures

	| formatted |
	
	formatted := 'Tenures: {1}' format: { self root getTenures }.
	
	^ formatted