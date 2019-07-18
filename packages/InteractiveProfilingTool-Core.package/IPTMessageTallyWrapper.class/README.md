`IPTMessageTallyWrapper` provides easy access to a `MessageTally`'s data.

`getFullGarbageCollectionStats` and `getIncrementalGarbageCollectionStats` returns information on the count and time of garbage collection procedures.

The Squeak garbage collector follows the Mark-Sweep-Compact GC pattern. Memory is divided into two regions, the young and the old space. The young space contains short-lived objects, the old space contains long-lived objects (tenures).
	
There are two different garbage collection methods: Full GC and Incremental GC. An incremental GC collects garbage from the young space only, while a full GC runs in both regions.

Garbage collection information is retrieved from the `MessageTally`'s `gcStats` attribute. For more information on this attribute, please refer to the method comment in `SmalltalkImage >> vmParameterAt:` or the documentation under "Squeak Menu" > "About Squeak" > "VM Parameters".