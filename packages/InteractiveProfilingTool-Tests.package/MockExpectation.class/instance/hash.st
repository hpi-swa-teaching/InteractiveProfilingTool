comparing
hash

	| selector arguments |
	
	selector := { self selector }.
	arguments := self arguments ifNil: {}.
	
	^ (selector, arguments) hash