tests
testInitializeTotalTimeIfNecessary

	| tree |
	
	tree := describedClass new.
	
	"case total time not set in tree"
	tree initializeTotalTimeIfNecessaryUsing: tallyObjectTimeZero.
	self assert: tree totalTime = 0.
	
	"case toatal time already set in tree"
	tree initializeTotalTimeIfNecessaryUsing: tallyObject.
	self assert: tree totalTime = 0