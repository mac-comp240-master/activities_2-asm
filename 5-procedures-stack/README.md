# Part 1: Procedure Control Flow

For these activities there are two files that contain functions that call each other. This is not likely how you would best organize your code, but rather used to illustrate a point about the compiler and how code gets assembled.

- main(), found in main.c calls function/procedure multstore(), which is found in the file mstore.c
- multstore() calls function/procedure  mult2(), which is in main.c

This convolution of code is not recommended, but here is the point for it:

**When multiple files of code are used to compile one binary, the compiler will not be able to create one .s intermediate file from the original multiple files.**

Notice that the Makefile is combining code from 2 original .c files (on line 25)

If you run make in this example directory, what is done to enable us to see the assembly is a 3-part process:

1. The executable file is made from multstore.c and main.c (the executable is temporarily called mstore)
2. The program objdump is used to reverse engineering the mstore executable into assembly, creating a file called mstore-exe.64d. 
3. The original executable, mstore is removed.

Try running make and you will see these steps as the following in the terminal, along with some others:

    gcc -Og -Wall  -m64 mstore.c main.c -o mstore  
    objdump -d mstore > mstore-exe.64d 
    rm -f mstore
    
There is also an assembly file called incr.64s that gets made- we will look at that later in this activity. The recurse.c example and its corresponding assembly file are option for you to study if you wish.

Now examine the file called mstore-exe.64d, which now shows us assembly for our program. The important part to look at is at approximately line 122, where the code for function multstore is, and line 130, where the code for function mult2 is. These dump files enable us to observe how the executable progam file gets put together from these individual .c files.

With mstore-exe.64d in an editor window, type this at the terminal:

    cat mstore.c

Note that this shows you the file in a different way to looking at it in a tab in codio. Note that in this simple code, mulstore is calling mult2.

Note how the mstore-exe.64d file contains the assembly for multstore, which has a callq in it that transfers control to the mult2 procedure, which matches the C code for multstore in mstore.c.

Your instructor will explain the rest of this code with the presentation slides.

# Part 2: Procedure argument handling

Make a new file called arguments.c.  Start with a function like this:

```
void proc( long a1,  long * a1p,
            int a2,   int * a2p,
          short a3, short * a3p,
          char  a4,  char * a4p) {
          
    *a1p += a1;
    *a2p += a2;
    *a3p += a3;
    *a4p += a4;

}
```

Now add your arguments.64s target assembly file to the Makefile on the ‘files’ line, like this:

    files:	incr.64s mstore-exe.64d recurse.64s arguments.64s

Note that you can simply type ‘make’ at the command line and the assembly for your new file should get made.  This is because the target called ‘files’ is the first target in the makefile.

Observe the assembly code in arguments.64s for this function called proc. Carefully trace where each of the arguments is stored by looking at the 4 add operations and their respective operands.

Now add in a call to this procedure from another function like this:

```
void call_proc() {
    long l = 0x01DE;
    int i = 200;
    short s = 16;
    char c = 0x2;
    
    proc(l, &l, i, &i, s, &s, c, &c);
    //… note that we could use l, i, s, or c again down here
}
```

After making the arguments.64s file, copy it so that you can make some comments in it:

cp arguments.64s commented_arguments_assembly 

The first 6 arguments from a caller to the called procedure are saved as follows:

![](.//img/07_first6args.png)

The rest of the arguments are placed on the stack:

![](.//img/07_args7_onward.png)

Carefully document the assembly in commented_arguments_assembly for this procedure, call_proc, that is the caller, by noting how arguments 7 and 8 are placed on the stack in the caller’s frame, as shown in the following diagram based on Figure 3.25 of the book. Also note how all of the parameters being sent to proc are being stored on the stack for safe keeping (these are the saved registers and local variables shown in the diagram below)- make notes about them on the assembly for call_proc.

![](.//img/07frame-general.png)