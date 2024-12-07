# Unhandled Exceptions in Asynchronous Dart Code

This repository demonstrates a common error in asynchronous Dart code: insufficient exception handling during network requests. The `bug.dart` file shows the flawed code, while `bugSolution.dart` presents a more robust solution.  The primary issue is the lack of specific error handling and the potential for silent failures. 

**Key improvements in the solution:**

* **Specific error handling:**  The solution distinguishes between network errors and JSON decoding issues. 
* **User-friendly error messages:**  It provides informative error messages instead of generic exceptions. 
* **Error propagation:** It uses `rethrow` to allow higher-level functions to handle errors.