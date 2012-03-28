
   ================================================================================
   CAUTION: This 64 bit program only runs on 64 bit versions of Windows. Do not try
            to launch it on a 32 bit operating system - it might crash your system!
   ================================================================================

   ================================================================================
   HINT:    It takes a while before the program's main window shows the processor's
            data. When you launch STbench, it first creates the main window and its
            descendants, then it starts to gather all relevant processor parameters
            via CPUID.  Finally, it determines the speed of your machine by sending
            STbench to sleep for a few seconds. This speed probe is responsible for
            the delay. Unfortunately (for users), it is impossible to show detailed
            information before all required data were collected...
   ================================================================================


   STbench

   a small benchmark revealing the true performance of your processor in comparison
   to other processors. STbench does not provide show efects or endless test loops,
   it is a fast and simple test suite probing your hardware thoroughly. Don't think
   STbench does not do anything, because TaskManager doesn't show huge spikes while
   STbench is running ... these test loops simply are too short to be recognised by
   TaskManager. Nevertheless, these tests stress your processor and its memory sub-
   system to their limits. Surely not a good idea to do this for a longer time than
   the few milliseconds it takes until all tests were performed.

   STbench is optimised for recent processors with multiple execution pipelines. It
   feeds your processor with 24 contiguous read, write, read/write (copy) or read -
   modify - write operations. Processors with just one execution pipe need at least
   24 clock cycles to execute one iteration of the inner loop. On recent processors
   with up to four execution pipes, the same job should be performed in less clocks
   per iteration.

   However, the design of those pipes and, more important, the memory subsystem act
   like brakes and introduce physical limits. Therefore, the theoretically possible
   performance can't be achieved by a real device. Moreover, caches and main memory
   (aka RAM aka DDRx) behave lazier than the processor's execution unit(s), slowing
   the machine down. Another, much more important factor reducing the speed of your
   machine are conceptual flaws in modern software.


   Software Brakes

   As a matter of fact, the achieved performance of modern hardware greatly depends
   on software. Recent software should utilise as much of the built-in capabilities
   provided by processors as possible. Having a look at existing ABIs = application
   binary interfaces, it is just wishfull thinking to assume such a thing. With the
   change from 32 to 64 bit, wasting resources became a new dogma. Most 32 bit ABIs
   (ab)used two out of six general purpose registers (ECX and EDX) as garbage pile,
   but, with the 'design' of 64 bit ABIs, things got worse. Instead of developing a
   clean and futureproof concept, where registers are treated as valuable resources
   (in the end, they have to be shared by all functions...), the 'dirt factor' grew
   to an extent. Even if 64 bit processors provide eight additional registers, most
   of them are abused as garbage piles, aka volatile registers. No matter which ABI
   function you call, you can expect that all passed registers are overwritten with
   temporary crap produced by that function. It does not matter if it is Windows or
   Linux - you can be sure frequently used parameters have to be reloaded. Over and
   over, again. It seems, we do not really care about wasting valuable resources as
   long as we can save typing the few additional lines to preserve and restore some
   volatile registers, even if we are forced to reload parameters which were stored
   in them before we called another function. Slightly more work, for sure. but our
   Gurus told us to do it, because ... it is sooo convenient.


   How STbench Works

   Back to business. STbench is a benchmark feeding your processor with appropriate
   food. In concurrence to main stream benchmarks, it feeds all available execution
   pipes throughout the entire test loop. Therefore, processors with many execution
   pipes gain some advantage over competitors with less. The work is distributed to
   multiple co-workers, working on one aspect of the task, each. Parallel execution
   increases the overall amount of work that can be performed per clock cycle.

   Finding a fast way to access large memory blocks is not as easy as it seems. Due
   to the design of modern processors, their memory subsystems and the attached RAM
   modules, caching is a major factor if you want to gain some speed. Unfortunately
   for programmers, too much processors with different cache designs are out there,
   not to speak of different processor designs we may find in a user's computer. It
   is impossible to write software matching all existing preferences, so we have to
   find a compromise, suiting most of the existing hardware. Recent processors have
   one (outdated), one and a half (iNTEL), three (Athlon, Phenom) or four (Zambezi)
   execution pipes and L1 caches with 32 or 64 byte cache lines. To guarantee equal
   chances for any type, the lowest number of operations matching all of them is 12
   (12 * 1) or (8 * 1.5) or (6 * 2) or (4 * 3). But: Twelve eight byte wide general
   purpose registers (GPRs) fill just 96 byte of two used 64 byte cache lines found
   in most processors. Using 12 GPRs twice fills three 64 byte cache lines entirely
   and allows direct comparisons between GPR, SSE and AVR results.

   STbench feeds the tested processor with a contiguous instruction stream, keeping
   all execution pipes busy all of the time. To guarantee un-interrupted data flow,
   advanced prefetching is used, loading data of the next iteration before starting
   the real work (prefetch instructions do not affect the execution flow, they just
   tell the processor to fill the next free cache line(s) with the requested data).
   However, there is some impact if all caches are filled with previously requested
   data. Throughput breaks down slightly if that happens. STbench's block sizes are
   chosen to exceed cache sizes, intentionally:

   moved/manipulated   Iterations   exceeds       cache

         18 432 byte           96     16 KB          L1
         36 864 byte          192     32 KB          L1
         73 728 byte          384     64 KB          L1
        589 824 byte        3 072    512 KB       L2/L3
      1 179 648 byte        6 144      1 MB       L2/L3
      2 359 296 byte       12 288      2 MB       L2/L3
      4 718 592 byte       24 576      4 MB          L3
      9 437 184 byte       49 152      8 MB          L3

   Table 1: Block Sizes

   The last test exceeds any currently available L3 cache, so it is a good test for
   the true performance of a machine's memory subsystem (if the proccessor does not
   provide recent caching mechanisms).


   'Byte Per Cycle'

   The basic benchmark tests a single core, only, retrieving the performance of the
   integer [GPR] and floating point [SSE] unit(s). If your processor claims to have
   256 bit AVX registers, a third test suite, using AVX instructions, is performed.
   All three test suits include four separate sub-test: Read, write, copy and read-
   modify-write (RMW). Each sub-test includes all eight test runs listed in Table 1
   (above). Because the largest test does not take much more than mere 0.01 seconds
   to finish, all tests are performed eight times in a row. Only the best result of
   each individual test is taken as final result. Finally, the best results of each
   unit (GPR, SSE, AVX) are taken to calculate individual 'byte per cycle' scores.

   Byte per cycle is calculated by dividing the block size (the bytes) by the clock
   cycles returned as test result. Because the result of this division is too small
   for accurate comparisons - an integer between 0 and 9 - block size is multiplied
   by one million before the division, resulting in numbers between '0.000 000' and
   '4 294.967 295'.

   As a rule of thumb: Even the tiny difference of 0.001 byte per clock still means
   three point three Megabyte per second on a 3.3 GHz machine. Hence, these results
   are (at least) significant down to the third digit behind the decimal point.


   'Runs Per Millisecond'

   If a processor has more than two cores, the multicore benchmark might be chosen,
   as well. On program initialisation, STbench detects whatever a processor returns
   as 'core count'. This information is retrieved by calling CPUID, function 01. On
   return, EBX[16-23] holds the count of cores if EDX[28] is set. The returned core
   count might fake a larger number than the true count of physically existing pro-
   cessors. STbench does not care if the claimed cores exist or not, it just relies
   on the honesty of processor vendors who burn this number into their products (it
   surely depends on their definition of the term 'core'...).

   Okay, down to the guts. STbench creates one - suspended - thread less than CPUID
   claimed as processor count. When all threads are created, one after the other is
   started in a loop. Now that all threads are busy, the calling process is sent to
   sleep for eight milliseconds, while the running threads process the test loop as
   often as they can. To avoid inaccurate results, each thread increments its count
   variable whenever it finished an iteration of the test loop. The calling process
   resumes its work after the sleep timer expired and starts killing all threads it
   created. Finally, all thread iteration counters are added and the sum is divided
   by the processor count, then divided by 8. Because the test probes all available
   resources, there is just one result.  This test is performed as often as defined
   in STbench's settings. The best (highest) result is stored and displayed.
