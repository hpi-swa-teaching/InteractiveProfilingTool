helpers
isRegisteredToWorldMenu

	^ (TheWorldMenu classPool at: #OpenMenuRegistry) includes: {'Interactive Profiler'. {IPTToggle. #open}}