# ASM Activity 5, Part 1

## Making the assembly code

The Makefile for this example is a bit more complicated than you have used recently. it will make a single version of assembly for the original `gt.c` file, but two versions of assembly for the `control.c` file, which we will observe later.

Run this to see the four assembly files get created:

    make clean
    make

## Relational Operators

The file called `gt.c` contains 2 small functions that illustrate how the relational operators get translated into assembly code. In particular, it contains the > operator and the == operator in two separate functions.

## Explain the code for gt()

Open the file gt.s in the lower left panel so you can compare it to gt.c in the upper left panel.

Look carefully at the assembly code for the function gt() in the file gt.s. Be certain that you can explain how the 3 lines of assembly work together to do what the function was coded to do. Recall what cmpq does and how it is used in conjunction with setg. Refer to your book or the class slides.

#### What is the assembly doing?

Explain in detail what the assembly code for gt is accomplishing. How are registers rsi and rdi being compared? Write as extra notes or as comments in a copy of the .s file.


## Explain the code for zero()

Look carefully at the assembly code for the function zero(). Recall what testq does and how it is used in conjunction with sete in this case. Refer to your book or class slides.

What is the zero() assembly doing?
Explain in detail what the assembly code for zero is accomplishing. How are registers rsi and rdi being compared using the testq instruction? When this is done, why can we then use sete to tell if x was == zero?  Write as extra notes or as comments in a copy of the .s file.


## Now try some other operators

Add more functions of your own design to the file `gt.c`. Use other relational operators (>=  <  <=  ==  != ) and try different data types besides long. Re-make the assembly and observe what results.

# Part 2

# If statement examples

Let's turn to an example in the file called `control.c`. It contains three versions of C code that accomplish the same thing. It is computing and returning what is called the absolute difference between the inputs x and y. Look at the first function, `absdiff()`, and study it to make sure you know what it is doing.

The next two functions in this file are equivalent to `absdiff`. The first one, `absdiff_j`, mimics how the compiler, when using the -Og optimization, creates the assembly code using a jump where you see goto in the C code.

The third function `absdiff_cm`, mimics what the compiler does to turn the above versions into conditional move versions when using the -O1 optimization flag.

## Observe differences

### Lowest optimization of compiler

The file `control.no_cm_s` was compiled using gcc with the command line flag -Og (capital O with a g). This is the lowest level of optimization. Look at the control.c file and `control.no_cm_s`.

Try to explain to yourself and your neighbor what this assembly code is doing for each of the three functions. Which 2 functions are essentially the same assembly and which one differs slightly?

### Optimization the uses conditional moves

The file `control.O1_cm_s` (capital O in its name) was compiled using the gcc command line flag -O1 (capital O with a one), which is a higher level of compiler optimization than -Og. Note how it contains conditional move operations (cmovle). Try to explain to yourself and your neighbor what this assembly code is doing. Is there any difference between the assembly for the 3 functions?

What have we learned in class about why this optimization is useful for running the code faster?
