model_access
hasChildren: aMessageTally

	^(self filterRelevantTimeNodes: (aMessageTally receivers)) isEmpty not