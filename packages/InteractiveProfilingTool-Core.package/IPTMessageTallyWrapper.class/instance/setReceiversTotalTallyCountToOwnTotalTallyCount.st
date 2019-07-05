wrapping
setReceiversTotalTallyCountToOwnTotalTallyCount

	self receivers do: [ :node | 
		node totalTallyCountOfOverallTree: self totalTallyCountOfOverallTree.
		node setReceiversTotalTallyCountToOwnTotalTallyCount]