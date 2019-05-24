running
setUp

	tallyObject := IPTTreeModelMock constructMessageTallyFrom: [5 timesRepeat: [Project current world doOneCycle]].

	tallyObjectNoCalls := IPTTreeModelMock constructMessageTallyFrom: []

	