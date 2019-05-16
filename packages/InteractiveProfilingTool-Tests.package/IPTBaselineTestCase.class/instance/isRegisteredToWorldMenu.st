helpers
isRegisteredToWorldMenu

	^ (TheWorldMenu classPool at: #OpenMenuRegistry) includes: {'Interactive Profiler'. {IPTModel. #open}}