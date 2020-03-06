# Examples of casting in C and Assembly

In our C code, one valid operation that we can do on data types is explicitly casting expressions or variables of one type to a *wider* type, that is, a type that contains more bytes that the original. Let's examine examples of this in the corresponding assembly code.

### <img src="../img/emblem-important.svg" alt="Important" width="20" align="bottom"> Narrowing is bad; so is most implicit casting

Note that we never want to convert an expression result or a variable to a type that has fewer bytes.

We also want to avoid the use of implicit casting as much as we possibly can. This is where the compiler is able to attempt the cast, or a function such as printf does the cast for us. These types of *implicit* casting make code hard to read and can cause bugs to creep in over time as code is changed.


## First example: Two's complement numbers

The Makefile is provided to create a file `casting.s` from the original `casting.c` file.

Let's start by looking at the function *addMult* in the file `casting.c`. In this case we are dealing with signed integers. Functions like this are not uncommon in typed languages, where you might get a value such as the parameter z that was returned from a library function, but then is used in another function with variables of type long and the function returns a long.

Observe the assembly code for *addMult*. The `movslq` operation is handling the widening of the variable z.

What does ‘movslq’ do? Why is the movslq operation being used on the input parameter named z to move it into a register? Compare this to the other possible mov operations.

## Next example: unsigned data values

Now let's examine an example using unsigned data variables, found in *arith_u*. This again is a somewhat typical example of how we might widen with a cast to get proper data types that can be manipulated in arithmetic expressions.

What operations are performing the widenings in the assembly code for arith_u? Why is each of these used-- what is the difference between them?

Can you think of why the operations ending in l (eg movzbl) were sufficient and therefore chosen by the compiler?




## Experiment a little bit

Try devising your own new functions that do some arithmetic on variables of different types that need widening. Observe the assembly to see if you can understand what it is doing.

## In case you were wondering

In answer to this question: What operations are performing the widenings in the assembly code for arith_u? Why is each of these used-- what is the difference between them?

    movzbl widens a char, which is one byte, to a double-word. movzwl widens a short, which is 2 bytes (w) to a double-word.

In answer to this question: Can you think of why the operations ending in l (eg movzbl) were sufficient and therefore chosen by the compiler?

    This is a bit of a conundrum, really. It is likely because the registers being used (those with i, d, and s in the name), were already guaranteed to have all zeros in them when this code was to be run, so only the lower half of the register needed to be cleared and extended.

<!--
### Getting started
There are various things you can do to quickly and efficiently configure your Codio Box to your exact requirements. 

### GUI Applications and the Virtual Desktop 
The Virtual Desktop allows you auto develop GUI based applications using any programming language. You can install a Virtual Desktop in your Box. You can then start the desktop and view it within the Codio IDE or in a new browser tab.

[Virtual Desktop documentation](https://codio.com/docs/ide/boxes/installsw/gui/)


### Command line access and the Terminal window
All Codio Boxes provide sudo level privileges to the underlying Ubuntu server. This means you can install and configure any component you like. You access the terminal from the **Tools->Terminal** menu item.

### Debugger
The Codio IDE comes with a powerful visual debugger. Currently we support Python, Java, C, C++ and NodeJS. Other languages can be added on request.

[Debugger documentation](https://codio.com/docs/ide/features/debugging/)


### Content authoring and assessments
Codio comes with a very powerful content authoring tool, Codio Guides. Guides is also where you create all forms of auto-graded assessments. 

- [Guides documentation](https://codio.com/docs/content/authoring/overview/)
- [Assessments documentation](https://codio.com/docs/content/authoring/assessments/)

### Templating Box configurations and projects
Codio offers two very powerful templating options so you can create new projects from those templates with just a couple of clicks. **Stacks** allow you to create snapshots of the Box’s underlying software configuration. You can then create new projects from a Stack avoiding having to configure anew each time you start a new project. **Starter Packs** allow you to template an entire project, including workspace code.

- [Stacks documentation](https://codio.com/docs/project/stacks/)
- [Starter Packs documentation](https://codio.com/docs/project/packs/)

### Install software
You can always install software onto your Box using the command line. However, Codio offers a shortcut for commonly installed components that can be accessed from the **Tools->Install Software** menu.

We can easily add new items to the Install Software screen, so feel free to submit requests.

[Install Software documentation](https://codio.com/docs/ide/boxes/installsw/box-parts/)

-->