as yet unclassified
contents

	^ self item getChildrenWithRelevantPerformanceImpact
		collect: [ :child | IPTTreeItemWrapper with: child model: self model ].