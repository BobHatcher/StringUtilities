# StringUtilities
An Apex class that you can use to leverage Apex String methods in Flows

## What This Code Does
With this code, you can use any of the String methods available in Apex from within a Flow.

## How to Use

### 1. Installation
You can use the code from the repo directly in your IDE.

Or, the quick-and-dirty way that doesn't require an IDE or developer skills:
  1. Open Developer Console in your sandbox
  2. File -> New -> Apex Class. Name it StringUtility
  3. Paste the code from StringUtility into this new Class file and save.
  4. File -> New -> Apex Class. Name it StringUtilityTest
  5. Paste the code from StringUtilityTest into this new Class file and save.

Upon deployment, you will need to run StringUtilitiesTest.

### 2. Usage

Please refer to the [Apex documentation for the String class](https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_string.htm).

To leverage a function in a Flow, drill into the specific function you want to use from the documentation. In this example, we'll use the `left()` function documented [here](https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_string.htm#apex_System_String_left).

Note the Parameters indicate the function takes an Integer value (called 'length') and returns a String.

So to use this function in a Flow:
   1. In your Flow, create an Action. Search for "String Apex Methods".
   2. Inputs:
        - Apex Method: Enter the name of the function precisely as it is listed in the header of the section of the documentation. In this case, it's: `left(length)`. This is case sensitive.
        - String to Manipulate: The String you want to perform the action on. This can be any String value from the Flow.
        - Parameter: Depending on the type of the parameter, enter the value in that slot. `left(length)` takes an integer value (i.e., `length` is a whole number), so include your value there.
   3. Outputs: Depending on the type of information that the String function returns, the returned value will come back in a "Result" field. Results from `left(length)` will come back in the "String Result" field.

### 3. Examples

toLowerCase()
   - Apex Method: `toLowerCase()`
   - String to Manipulate 'The Quick Brown Fox'
   - No parameters necessary
   - -> Returns 'the quick brown fox' in the String Result field
   
abbreviate(maxWidth)
   - Apex Method: `abbreviate(maxWidth)`
   - String to Manipulate: `The Quick Brown Fox``
   - Integer Parameter:  `5`
   - -> Returns `The Q` in the String Result field
   
substring(startIndex, endIndex)
   - Apex Method: `substring(startIndex, endIndex)`
   - String to Manipulate: 'The Quick Brown Fox'
   - Integer Parameter:  `5`
   - Integer Parameter 2:  `12`
   - -> Returns `uick Br` in the String Result field
   
contains(substring)
   - Apex Method: `contains(substring)`
   - String to Manipulate: `The Quick Brown Fox`
   - String Parameter:  `foo`
   - -> Returns `false` in the Boolean Result field
