# Introduction #

The Loader is ST-Open's memory manager. It loads datafields, files and memory blocks, which automatically are closed when the program is terminated. If datafields or files loaded via the _loaded files list option_ have their changed flag set, their content is saved before the datafield's or file's memory block finally is released.


# Details #

Current limits:

  * 2,048 memory blocks (8 of them occupied by basic system functions).

  * Requested datafields or files must fit into memory. If there is no sufficient memory, the Loader rejects the request.

  * Swapping file parts from storage devices to memory and vice versa is not supported. This is not only a question of reduced speed - the required code also blew up the Loaders code by several KB. Split your files into _loadable_ parts if they exceed the available memory...


# Internals #

The Loader itself occupies 65,536 byte. Data for each allocated memory block is stored in a 32 byte structure:

MemHandle:

00___DQ___Block Address

08___DD___Flags

0C___DD___Instance Count

10___DD___Allocated Size

14___DD___File Size

18___DD___Field Number

1C___DD___Field Entries

The system occupies the first eight memory handles for itself, system variables and lookup tables, system strings, two 65,536 byte buffers for FDacc() and register dumps plus one 65,536 byte general purpose buffer. The eighth memory handle is reserved for future expansions, so 2,040 handles are left for system functions and applications.

When a request succeeds, the address of the next free MemHandle is returned. Even if this is a valid address, you should treat it as just another handle like HWND, PHMENU, et cetera. This MemHandle is required for calling FDacc() and LDfre(), so it should be stored immediately after LDreq() returned. You can retrieve it later on via getMH(), but that's time consuming, because getMH() has to walk through the entire Loader table until it finds the given field number.

If you need the address of the requested memory block, it can easily be read from address 00`[`MemHandle`]`. Same applies to all other parameters in the structure shown above.

## Related Functions ##

  * LDinit() Initializes the Loader and the entire ST-Open system. On success, all system functions (like those listed below) are accessible.

  * LDexit() Shuts down the ST-Open system. All open datafields and files are closed (datafields and loaded files are saved if their changed flag is set), all allocated memory blocks are freed. Most system functions will not work any longer when their working data cannot be loaded!

  * LDreq() Request loading of a datafield, file or allocation of a memory block. Datafields go through a course check to verify their integrity.

  * LDchg() Change the size of an allocated memory block. The new block should be smaller or larger than the currently used one.

  * LDfre() Release an allocated memory block. If it is a datafield, the content is saved if the changed flag is set.

  * LDclr() Wipe the content of a datafield. This erases everything except the datafield's header. If the datafield contains strings, it is reduced to its minimum size.

  * getMH() Retrieve the MemHandle for the passed field number.

  * LDupd() Update LD structure. This might be required if FDacc() changed the datafield's size while new strings were added.

  * LDunc() Resets the changed flag of a datafield. Changes get lost if LDunc() is called before freeing the MemHandle (UNDO).

  * LDstc() Sets the changed flag of a datafield. Forces a save if it is called prior to a LDfre() call.

  * LDsts() Set the changed flag and size of a datafield. This might be required to save the changed content of an edited MLE.

  * MHxcg() Exchanges two MemHandles. This might be required for some reasons...
