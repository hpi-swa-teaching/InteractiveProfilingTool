baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				package: 'InteractiveProfilingTool-Core';
				package: 'InteractiveProfilingTool-Tests' with: [spec requires: #('InteractiveProfilingTool-Core')];
				yourself.
			spec
				group: 'default' with: #('InteractiveProfilingTool-Core');
				group: 'tests' with: #('InteractiveProfilingTool-Tests')];
				yourself.
	spec
		postLoadDoIt: #postLoad