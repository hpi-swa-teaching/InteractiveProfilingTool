running
compileDummyMethods
	
	DummyClass compile: self dummyMethodToProfileSourceCode.
	DummyObject compile: self dummyMethodToRemoveSourceCode.
	DummyObject compile: self dummyMethodToBeChangedOldSourceCode.