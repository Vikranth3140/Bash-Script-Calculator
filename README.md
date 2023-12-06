Bash Script Calculator
==========================

This is a simple bash script that acts as a math calculator. It reads input from a text file, performs arithmetic operations, and saves the results in an output file.

Usage
-----

### Prerequisites

*   Bash

### Instructions

1.  Clone the repository:

    ```bash
    git clone https://github.com/Vikranth3140/Bash-Script-Calculator.git
    ```

2.  Navigate to the project directory:

    ```bash
    cd calculator
    ```
    
3.  Place your input in a file named `input.txt` with the following format:

    ```plaintext
    7 3 sum
    9 6 difference
    2 5 product
    3 9 division
    1 3 xor
    5 1 compare
    4 2 power
    16 sqrt
    10 3 modulus
    -8 absolute
    100 logarithm
    ```
    Each line should contain two numbers and an operation.

4.  Run the calculator script using the Makefile:

    ```bash
    make
    ```

    The results will be saved in the `output.txt` file.


### Operations

* `sum`: Get the sum of two numbers.
* `difference`: Get the difference of two numbers.
* `product`: Get the product of two numbers.
* `division`: Get the division of two numbers.
* `xor`: Get the XOR of two numbers.
* `compare`: Get the bigger number from two given numbers.
* `power`: Get the result of raising the first number to the power of the second.
* `sqrt`: Get the square root of a number.
* `modulus`: Get the remainder of the division of two numbers.
* `absolute`: Get the absolute value of a number.
* `logarithm`: Get the natural logarithm of a number.

Directory Structure
-------------------

    calculator/ |-- calculator.sh |-- input.txt |-- Makefile |-- output.txt |-- README.md

Contributing
------------

Welcome to contribute to the Bash Script Calculator! Feel free to fork the repository, make UI enhancements, or suggest any improvements. To contribute, follow these steps:

1.  Fork the repository.
2.  Create a new branch for your feature or bug fix.
3.  Make your changes and commit them.
4.  Push the changes to your fork.
5.  Submit a pull request.

Thank you for your contributions!
