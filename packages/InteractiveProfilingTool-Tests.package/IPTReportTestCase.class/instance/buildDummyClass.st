helpers
buildDummyClass

	 ClassBuilder new 
			superclass: Object 
			subclass: #Dummy 
			instanceVariableNames: '' 
			classVariableNames: '' 
			poolDictionaries: '' 
			category: 'InteractiveProfilingTool-Test'.
			
		self dummyClass compile: self dummyMethodSourceCode