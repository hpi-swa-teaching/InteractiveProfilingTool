running
compileDummyMethods
	
	(Smalltalk classNamed:  'DummyClass') compile: self dummyMethodToProfileSourceCode.
	(Smalltalk classNamed: 'DummyObject')
		compile: self dummyMethodToRemoveSourceCode;
		compile: self dummyMethodToBeChangedOldSourceCode;
		compile: self dummyMethodSourceCode.