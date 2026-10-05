Just trying out binary manipulation and some random stuff

compiled binaries can be de compiled with `objdump -d a.out` this prints out the machine code, the addresses, opcodes, the arguments.
> [!NOTE]
> This an aarch64 v8 machine code, yours will differ.
we can also see the sing function declared above. there is also a `_start` and a `_start_main` which clears buffers, initialises stack pointer (77c), some more stuff and then finally calls our main function
the main code starts from `main` (88c in this case)
we can see calls to external functions `strcmp` (8e4)
in the compiled binary we can see an instruction to call `sing` function at 8f0
the code asks for a string and compares and if ... then calls `sing`. our goal is to make this code crack.
we can see a `cbnz` (check buffer not zero) at 8e8 right after the strcmp and before the sing function call.
the lines 8ec and 8f4 are branch commands used to point the interpreter back to this place after executing the branch (sing) code.

we can see next to the cbnz the opcode of the cbnz function (35), you can refer [this](https://kib.kiev.ua/x86docs/ARM/ARMARMv8/DDI0487A_g_armv8_arm.pdf?utm_source=chatgpt.com) document for aarch64 or one specifit to your cpu.
the binary only responds if you type 'hellyeah', we want to change that (assume we forgot out password).
use `hexedit a.out` press `<enter> 8ec<enter>` to jump to 8ec, then move cursor to 5 in 35 and press 4. this should change it to 34 which is `cbz` (check buffer zero). this is the oppisite of what the code did earlier. so it should now jump to sing if not equal. we can easily test this. save and quit and test it out.
