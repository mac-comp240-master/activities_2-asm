// traditional if statement
long absdiff(long x, long y)
{
    long result;
    if (x > y) {
        result = x-y;
    } else {
        result = y-x;
    }
    return result;
}

// jump version-
// mimics how the compiler, using the -Og optimization,
// creates the assembly code using a jump where you see goto
long absdiff_j(long x, long y)
{
    long result;
    int ntest = x <= y;
    if (ntest) goto Else;
    result = x-y;
    goto Done;
 Else:
    result = y-x;
 Done:
    return result;
}

// illustrates conditional move way of coding-
// mimics what the compiler does to turn the above versions
// into conditional move versions when using -O1
long absdiff_cm(long x, long y)
{
    long result;
    result = x-y;
    long eval = y-x;
    if (x <= y) {
	     result = eval;
    }
    return result;
}
