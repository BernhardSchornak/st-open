# Introduction #

A MemHandle (memory handle, MH) is the address where ST-Open's Loader stored relevant data about a loaded datafield, file or memory block.

Several functions await a MemHandle as required parameter. If they get an invalid MemHandle, they probably reject to work.