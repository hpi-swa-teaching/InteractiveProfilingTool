baseline
baseline: spec
	<baseline>		
	
	spec for: #'common' do: [
		spec package: 'VB-Regex' with: [
			spec repository: 'http://www.squeaksource.com/Regex'].
			
			spec
				package: 'InteractiveProfilingTool-Core';
				package: 'InteractiveProfilingTool-Tests' with: [
					(#('Squeak5.0') includes: Smalltalk version)
						ifTrue: [spec requires: #('VB-Regex' 'InteractiveProfilingTool-Core')]
						ifFalse: [spec requires: #('InteractiveProfilingTool-Core')]]
				yourself.
			spec
				group: 'default' with: #('InteractiveProfilingTool-Core');
				group: 'tests' with: #('InteractiveProfilingTool-Tests')];
				yourself
				