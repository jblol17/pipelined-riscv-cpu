# Pipelined RISC-V CPU
This is generally supposed to be a 5-stage pipelined RISC-V CPU that supports the RV32I version of the RISC-V ISA. The schematic for this design follows the design in the book `Digital Design and Computer Architecture: RISC-V Edition by Sarah Harris, David Harris`. Here is the schematic design that this code is based on: `INSERT THE PICTURE HERE LOL`

This project is basically for reinforcing my understanding of general processor hardware design. Ideally, I would like to expand the functionality of this design and incorporate some more stages in order to increase the CPI capability of this design. I'd also like to add some more complex designs so that I can ger a better idea of hardware implementations of CPUs that are made nowadays. Things like Out of Order (OoO) execution and consequently a Register Alias Table (RAT) or Re-Order Buffer (ROB). 

Maybe even a multi-core design with a small amount of Cache and a bus to get/store information in that cache at the correct time.  