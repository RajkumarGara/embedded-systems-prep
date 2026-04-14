# C Core — Embedded Developer Cheatsheets

Quick-reference markdown docs covering tricky C concepts, pitfalls, and patterns for embedded software.

## Topics

| # | File | What's Inside |
|---|------|---------------|
| 1 | [pointers.md](pointers.md) | Pointer arithmetic, pointer-to-pointer, void pointers, dangling/wild/null pointers |
| 2 | [function-pointers.md](function-pointers.md) | Callbacks, jump tables, ISR registration, typedef for function pointers |
| 3 | [structs-and-unions.md](structs-and-unions.md) | Struct padding/alignment, bit-fields, unions for type-punning, `memcmp` pitfalls |
| 4 | [bitwise-operations.md](bitwise-operations.md) | Set/clear/toggle/check bits, masks, swap without temp, power-of-2 tricks |
| 5 | [preprocessor.md](preprocessor.md) | Macros vs inline, stringification, token pasting, include guards, variadic macros |
| 6 | [undefined-behavior.md](undefined-behavior.md) | `i = i++ + ++i`, printf argument order, sequence points, signed overflow |
| 7 | [memory-layout.md](memory-layout.md) | Stack vs heap vs BSS vs data vs text, `sizeof` pitfalls, endianness |
| 8 | [operator-precedence.md](operator-precedence.md) | Precedence & associativity table, `*ptr++` vs `(*ptr)++` vs `*++ptr`, comma operator |
| 9 | [storage-classes.md](storage-classes.md) | `static`, `extern`, `register`, `auto`, linkage rules, scope vs lifetime |
| 10 | [strings-and-literals.md](strings-and-literals.md) | String literals in read-only memory, `char[]` vs `char*`, common pitfalls |
| 11 | [type-casting.md](type-casting.md) | Implicit conversions, integer promotion, signed/unsigned pitfalls, pointer casts |

### See also

| # | File | What's Inside |
|---|------|---------------|
| 12 | [const-volatile.md](../embedded_concepts/const-volatile.md) | `const` / `volatile` / `restrict` qualifiers, const-correctness patterns |
| 13 | [embedded-specific.md](../embedded_concepts/embedded-specific.md) | Ring buffers, watchdog use, fixed-point arithmetic, weak symbols, noinit sections, atomics |
| 14 | [embedded concepts index](../embedded_concepts/README.md) | Central index for boot process, endianness, memory map, registers, and linker script notes |
| 15 | [cpp_core index](../cpp_core/README.md) | C++ language notes, OOP refreshers, and STL cheat sheets collected under `cpp_core/` |
