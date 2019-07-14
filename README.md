# InteractiveProfilingTool [![Build Status](https://travis-ci.org/hpi-swa-teaching/InteractiveProfilingTool.svg?branch=master)](https://travis-ci.org/hpi-swa-teaching/InteractiveProfilingTool) ![Squeak Version](https://img.shields.io/badge/squeak-%3E5.0-informational.svg)

This piece of software was created for the Softwaretechnik module at Hasso Plattner Institut.  
Special attention was dedicated towards the employment of agile methods to shape the process of development.

The InteractiveProfilingTool at hand is inspired by [this other squeak profiler](https://github.com/hpi-swa-teaching/SWT17-Project-05), which did not fully match the expectations of the teaching chair.

Innovations:
* Start/stop via button
* Keyboard shortcuts for navigation
* Visual highlighting of expensive method calls
* Clean(er) architecture
* Very good test coverage

Remarks:

A relevance threshold is employed to hide method calls with an insignificant runtime. The value is hardcoded and relies on an assumption. It should serve its purpose, but in case you want to modify it, you have to edit its implementation. The literal value is defined in `IPTMessageTallyWrapper >> callRelevancePercentage`. Moreover, the spy-on functionality that allows profiling of individual methods is not yet implemented.

## Setup

Setup the project using Metacello. You may specify a branch other than `master`.

```smalltalk
Metacello new
    baseline: 'InteractiveProfilingTool';
    repository: 'github://hpi-swa-teaching/InteractiveProfilingTool:master/packages';
    load.
```
