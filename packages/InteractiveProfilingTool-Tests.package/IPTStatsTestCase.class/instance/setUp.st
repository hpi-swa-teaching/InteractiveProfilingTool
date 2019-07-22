running
setUp

	builder := ToolBuilder new.

	model := IPTStats new
		root: Mock new;
		userCallsRoots: {Mock new}