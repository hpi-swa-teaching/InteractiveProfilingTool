tests
testTenures

	| actual expected |
	
	expected := 'Tenures: 555'.
	actual := model formatTenures.
	
	self assert: expected equals: actual