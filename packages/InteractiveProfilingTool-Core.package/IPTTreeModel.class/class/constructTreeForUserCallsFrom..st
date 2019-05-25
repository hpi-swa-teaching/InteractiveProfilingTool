helpers
constructTreeForUserCallsFrom: aMessageTally

	| rootMessageTallyForUserCalls |
	
	rootMessageTallyForUserCalls := self findRootForUserCalls: aMessageTally.
	rootMessageTallyForUserCalls
		ifNotNil: [^ self constructWrappedTreeWithRoot: rootMessageTallyForUserCalls]
		ifNil: [^ {}].