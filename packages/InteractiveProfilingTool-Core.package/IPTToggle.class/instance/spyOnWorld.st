profiling
spyOnWorld

	^ self spyOnBlock: [
		[self isCurrentlyProfiling]
			whileTrue: [Project current world doOneCycle]]