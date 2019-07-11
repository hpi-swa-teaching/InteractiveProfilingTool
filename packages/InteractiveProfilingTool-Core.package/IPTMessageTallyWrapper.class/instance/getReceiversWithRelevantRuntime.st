messageTally access
getReceiversWithRelevantRuntime

	^ self receivers select: [:receiver | receiver isRelevantForRuntime]