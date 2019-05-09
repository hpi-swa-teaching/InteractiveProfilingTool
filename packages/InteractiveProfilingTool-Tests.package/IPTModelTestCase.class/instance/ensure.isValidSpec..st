helpers
ensure: aToolBuilderSpec isValidSpec: aSpecClass

	self assert: aSpecClass equals: aToolBuilderSpec className.
	
	"Even though it might not be the cleanest way to do so, building a
	tool from the given spec and waiting for any potential errors to be
	thrown is the easiest way to test for a valid spec."
	ToolBuilder build: aToolBuilderSpec