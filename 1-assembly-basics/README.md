# Examining Assembly Language Code

In this activity, you will see your first example of compiling C source code into assembly. Create a new plain text file in this repository and take notes as you observe the different features discussed below.

Please also try changing and recompiling the C source code, to observe how the assembly changes in response!

Let’s start with the file called `sum.c`.  Look at the code for `sum.c` and determine what is new to you or that you only vaguely recall.  You may want to explore those new or vaguely familiar features of C, since they will show up in other examples. 

There are some files already made from the Makefile included in this directory. One is the assembly language file made from `sum.c`, which is called `sum.s`.

You can compile everything again as follows. The Makefile does quite a bit—we will review that below.

    make clean
	make files

(aside: **_files_** is a kind of unfortunate word choice for a target in this makefile; hope it isn’t too confusing. It is meant to indicate that we are making intermediate files as part of the entire C compiling process.)

## Introduction to Reading Assembly

The assembly code for `swap.s` corresponds to `swap.c`. Look at the section of the file `swap.s` right after these lines:

    swap:

    .LFB0:

    and beforethe occurrence of this line:

    .LFE0:

This code is the set of 64-bit "assembly" version of the instructions corresponding to the function called swap in the `swap.c` code.

Note that `%rax` and other variables beginning with `%r` in x86-64 assembly refer to the registers on the machine.  We will see details of each of these later.

Relate this small section of assembly code to the code for the swap() function in the original C code file. In your text file, match parts of the C code to the instructions in assembly. 

### Parameters Go Into Registers

    The parameters to a function such as swap automatically get placed in particular registers. By convention, register %rdi holds the first parameter, and register %rsi holds the second parameter. We'll learn the conventions for more parameters later.

## More complicated example (just to pique your interest for now)

The assembly code for `sum.s` corresponds to `sum.c`. Look at the section of the `sum.s` file after the label:

    sumstore:

Note how in this assembly code file, you can find each function and compare it to the function with the same name in `sum.c`.

## VS Code Users

There is an extension in the marketplace for viewing assembly files. Got to the marketplace by choosing it along the left side (below the bug icon), and search for **assembly**. Then pick the popular one for x86 and x86_64.

## Makefile: What's Going On?

Open up the Makefile and look at it. There are many new things to notice about it. Here are a few:

* makefiles can contain definitions, such as in line 2, where CC is defined to be the same as gcc.  Then later in the Makefile, the tag $(CC)  is replaced by gcc before the compilation begins for a target. This is true for every definition you see at the top of the file. By convention these are all capital letters.

* makefiles can contain specially coded targets for C code files. In this makefile, one of them looks like this on a line by itself:

    .c.s:
	
	This is indicating that the next tab-indented line in the makefile will be used to create a file ending in .s from and original file ending in .c. An additional feature is that it is implying that any file ending in .c is a prerequisite for creating a corresponding file ending in .s.

* the line containing .SUFFIXES: target works in conjunction with the .c.s: target

* The -Og flag denotes that the compiler should use the lowest level of optimization (for us this means the assembly code will be easier to read). This is a minus sign, capital Oh letter,  and a lower case g. 

* The -S flag creates assembly language code in files called [TARGET].s. (This is a minus and a capital S all by itself sent to gcc.) For this activity, the 2 'target' assembly code files we will examine are:

    swap.s
	sum.s

We will review the files `swap.s` and `sum.s`.  First start with `swap.s`. As you view each of these assembly files, then you can view the corresponding .c file in the code editor. We have started with swap.c and swap.s available in two different panels. Make each visible so that you can compare them.

## References

The skill you will need to develop is to be able to interpret this assembly language code.  Here are a few references (besides your book) that tell you a bit more about x-86 assembly code:

[http://ref.x86asm.net/](http://ref.x86asm.net/)   (try the coder64 version)

[http://en.wikipedia.org/wiki/X86_assembly_language](http://en.wikipedia.org/wiki/X86_assembly_language)

[http://en.wikipedia.org/wiki/X86_instruction_listings](http://en.wikipedia.org/wiki/X86_instruction_listings)

[http://en.wikibooks.org/wiki/X86_Assembly/X86_Instructions](http://en.wikibooks.org/wiki/X86_Assembly/X86_Instructions)
