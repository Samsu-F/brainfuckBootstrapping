# The tape cells used by the compiler

cell no. | used as type | content
:--------|:-------------|:----------------
0        | int / char   | input
1        | boolean      | input is not `(`
2        | boolean      | input is not `)`
3        | boolean      | input is not `+`
4        | boolean      | input is not `,`
5        | boolean      | input is not `-`
6        | boolean      | input is not `.`
7        | boolean      | input is not `<`
8        | boolean      | input is not `>`
9        | boolean      | input is not `[`
10       | boolean      | input is not `]`
11       | boolean      | input is not `i`
12       | boolean      | input is not `l`
13       | boolean      | input is not `m`
14       | boolean      | input is not `o`
15       | boolean      | input is not `p`
16       | boolean      | input is not `r`
17       | boolean      | last command was on tape 1
18       | boolean      | last command was on tape 2
19       | const char   | `+` (43)
20       | const char   | `<` (60)
21       | const char   | `[` (91)
