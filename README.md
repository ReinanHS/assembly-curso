# Assembly-curso
Assembly ou linguagem de montagem é uma notação legível por humanos para o código de máquina que uma arquitetura de computador específica usa, utilizada para programar códigos entendidos por dispositivos computacionais, como microprocessadores e microcontroladores.

# Registers

registers are a part of the processor that temporarily holds memory.
In the x86_64 architecture, registers hold 64 bits.

This means each register can hold the values:

Unsigned: 0 - 18,446,744,073,709,551,612
Signed: -9,223,372,036,854,775,808 - 9,223,372,036,854,775,808

![minima theme preview](/img/Registers.png)

# System Call

A System call, or a syscall, is when a program requests a service from the Kernel

System calls will differ por operating system because defferent operating systems use different Kernels.

All syscalls have an ID associated with them (a numbre ).

Syscalls also take arguments, meaning, a list of inputs

# System call Inputs by Register

![minima theme preview](/img/System-call-Inputs.png)

# System Call List

![minima theme preview](/img/System-Call-List.png)

# Sys_write

![minima theme preview](/img/Sys-write.png)

![minima theme preview](/img/Sys-write-2.png)

![minima theme preview](/img/Sys-write-3.png)

Suppose we want to write "Hello, World!\n" to the screen...

![minima theme preview](/img/Sys-write-4.png)

![minima theme preview](/img/Sys-write-5.png)

# Sys_exit

![minima theme preview](/img/Sys-exit.png)

# Sections

All x86_64 assembly files have three sections, the ".data" section, the ".bss" section, and the ".text" section.

The data section is where all data is defined before compilation.

the bss section is where data is allocated for future use.

the text section is where the actual code goes.

![minima theme preview](/img/helloWorld.png)

# Labels

A "label" is used to label a part of code.

Upon compilation, the compiler will calculate the location in which the label will sit in memory.

Any time the name of the label is used afterwards, that name is replaced by the location in memory by compiler.

![minima theme preview](/img/labels)


