accessing
contents

	^ self item getChildrenWithRelevantPerformanceImpact
		collect: [ :child | IPTTreeItemWrapper with: child model: self model ].