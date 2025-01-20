# Asynchronous Null Object Reference in ActionScript 3

This repository demonstrates an uncommon ActionScript 3 bug related to null object references. The error occurs due to the asynchronous nature of the code, making it harder to debug compared to typical null pointer exceptions.

The `BuggyAsync.as` file contains code that attempts to access a property of an object that might be null, depending on the timing of asynchronous events. The `AsyncSolution.as` file provides a solution using proper null checks and event listeners to handle potential null values.

## How to Reproduce

1.  Clone the repository.
2.  Open `BuggyAsync.as` in an ActionScript 3 editor (like FlashDevelop).
3.  Compile and run.  Observe the runtime error.
4.  Compare the error handling approach in `AsyncSolution.as`.

## Solution

The solution involves thoroughly checking for null values before accessing object properties. Event listeners are used to ensure the object is properly initialized before use, preventing the null pointer exception.