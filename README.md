# Introduction #

ST-Open offers libraries and tools to handle some of the advanced features like the built-in database engine.


# Details #

## The core library ##

  * database engine
  * API wrappers to restore clobbered registers
  * conversion from string to binary and vice versa (8, 16, 32, 64 and 128 bit)
  * memory management with integrated datafield and file loader
  * support for multilingual applications (via DBE)
  * low level encrytion/decryption (transparently handled by the DBE)
  * low level file access functions
  * several debugging tools (error box, register, memory and stack dumps on demand)

## Optional libraries ##

  * high level file functions (delete, copy, move, search)
  * file open dialog and file list with up to 256 entries
  * rudimentary online help with topics feature
  * SecSys (program access control and encryption/decryption)


# Goals #

ST-Open's libraries are thought as an easy way to port applications between different platforms by providing platform independent functions. The libraries work as interface between the OS and the application. If the libraries exist on different platforms, it is as easy as compiling the application code with the appropriate libraries to create one and the same program for multiple platforms without changing any line of code.


# Version History #

At the moment, the old OS/2 libraries are ported to Windows 64 bit. The OS/2 libraries V7.0.0. are available for download (see download page).

  * Version 1 (1983-1985) for MC68000
  * Version 2 (1992-1994) for x86   - DOS
  * Version 3 (1994-1999) for x86   - OS/2
  * Version 4 (1999-2003) for x86   - OS/2
  * Version 5 (2003-2005) for x86   - OS/2
  * Version 6 (2006-2006) for x86   - OS/2
  * Version 7 (2006-2009) for x86   - OS/2    (Intelligent Design)
  * Version 8 (2009-????) for AMD64 - Windows (Intelligent Design)
