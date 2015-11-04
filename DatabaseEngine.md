# Introduction #

ST-Open's Database Engine is thought as a DBE for programmers using ST-Open's Libraries. You can build a real database engine on top of it, but this is beyond the scope of the provided functions. The entire DBE is coded in 100% "PUSH and POP"-free assembler, following the rules defined in my _[Intelligent Design](http://st-intelligentdesign.blogspot.com/2010/04/rules.html)_ paper.

The basic design of ST-Open's DBE was developed around 1999. Two re-designs in 2006 (switch to _Intelligent Design_) and 2010 (switch to 64 bit code) simplified its internals, enhanced its reliability and improved its speed. Well, there never were issues with reliability, I just added a lot of tests to make the entire DBE even more _foolproof_ than it was before...


# Details #

Current limits for the Database Engine:

  * 4,294,967,294 datafields.

  * 4,294,967,295 byte per datafield.

  * Datafields must be loaded into memory before they can be used.

  * 32 subfields per datafield.

Except the last one, these are **theoretical** limits. As long as there are no memory modules in the Exabyte range, the amount of open datafields is limited to
the maximum amount of memory you can allocate (depends on hardware and OS).

## Data Types ##

00   no type   VOID      marker for not defined subfields
01   DB        Byte        8 bit data
02   DW        Word       16 bit data
03   DD        DWord      32 bit data
04   DQ        QWord      64 bit data
05   DO        OWord     128 bit data
06   FIX       Block     128 * n bit data blocks
07   $32       String    dynamic strings with 32 bit offset table

These types are sufficient to handle **any** kind of data you might want to read from or write to permanent storage.

By the way: All bits of these types are treated as the bits they are. There neither are master bits nor slave bits. All of them have just two states - either they are (bit set, electric charge present), or they are not (reset, no charge there). Funny master race bits called _sign bits_ only exist in some people's heads and belong to unfulfilled dreams about a [4th Reich'n'Roll](http://www.youtube.com/watch?v=AGr97SCvxp4).
In other words - the DBE does not care if someone gives each single bit a unique name before it is sent to the execution pipe(s)...


## Usage ##

There is just one function **FDacc()** to communicate with the DBE. A second declaration named **FDvpt()** was introduced for HLL-programmers - still the same function, but declared to return Qwords called _pointer to VOID_ rather than QWords called _longlong_ (or some other funny names mind factories might have invented for QWords since I wrote this page...).


## Related ##

  * `SftUp()` Delete last entry, shift entries starting with entry x one position upwards.

  * `SftDn()` Delete x, shift all following entries up to the end one position downwards.

  * LDreq() Load datafield or file or allocate empty memory block. You cannot use FDacc() without loading the datafield via LDreq(), first!

  * Ldfre() Unload datafield, file memory or memory block. Save datafields if their changed flag is set. Free the allocated memory block.
