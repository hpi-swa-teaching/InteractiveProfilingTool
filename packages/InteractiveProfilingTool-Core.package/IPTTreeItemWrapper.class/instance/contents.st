display
contents

	^ self item getReceiversWithRelevantRuntime
		collect: [:receiver | IPTTreeItemWrapper with: receiver model: self model]