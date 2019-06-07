as yet unclassified
testSourceCodeWhenClassDoesNotExistAnymore

	| messageTallyMock compiledMethod tree source |
	
	compiledMethod := (DummyClass>>#dummyMethodToProfile).
	
	messageTallyMock := MessageTallyMock new.
	messageTallyMock method: compiledMethod.
	 
	tree := IPTTreeModelMock new.
	tree currentSelection: messageTallyMock.
		
	DummyClass removeFromSystem.
	source := tree selectedMessage.
	
	ClassBuilder new superclass: Object subclass: #DummyClass instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: 'InteractiveProfilingTool-Tests'.
	DummyClass compile: 'dummyMethodToProfile
   	^ 1'.
	
	self assert: source equals: 'Missing'
	
	