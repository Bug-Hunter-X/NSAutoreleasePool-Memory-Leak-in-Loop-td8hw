# NSAutoreleasePool Memory Leak in Loop

This repository demonstrates a common but subtle memory leak that can occur in Objective-C when using `NSAutoreleasePool` within a loop.  Improper handling of the autorelease pool can lead to a gradual increase in memory consumption, eventually resulting in performance degradation or crashes.

The `bug.m` file shows the faulty code. The `bugSolution.m` file provides the corrected version.

## How to reproduce the bug
1. Compile and run `bug.m`.
2. Observe the memory usage (using Activity Monitor or similar tools).  You'll notice a steady increase in memory consumption with each loop iteration.

## Solution
The solution involves creating and draining a new `NSAutoreleasePool` for each iteration of the loop.  This ensures that all objects added to the pool during that iteration are released before the next iteration begins. See `bugSolution.m` for the corrected code.