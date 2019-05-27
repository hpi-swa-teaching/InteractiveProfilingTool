running
setUp

	tallyObject := IPTTreeModelTestCase constructMessageTallyFrom: [5 timesRepeat: [Project current world doOneCycle]].

	tallyObjectNoCalls := IPTTreeModelTestCase constructMessageTallyFrom: []

	