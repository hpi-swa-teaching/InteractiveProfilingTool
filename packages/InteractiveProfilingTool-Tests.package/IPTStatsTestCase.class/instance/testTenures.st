tests
testTenures

	| actual expected |
	
	model root expect: #getTenures toReturn: 555.
	
	expected := 'Tenures: 555'.
	actual := model formatTenures.
	
	self assert: expected equals: actual