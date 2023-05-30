# The Language
`<`, `>`, `+`, `-`, `,`, `.`, `[` and `]` behave same as in standard brainfuck. They controll the head and content of the first tape.
Additionally, there is a second tape and eight new commands which controll its head and content.

<br>

command | meaning  | what it does                                         | corresponding command for first tape
:-------|:---------|:-----------------------------------------------------|:--------------------------------------
`l`     | left     | move second head to the left                         | `<`
`r`     | right    | move second head to the right                        | `>`
`p`     | plus     | increment cell content                               | `+`
`m`     | minus    | decrement cell content                               | `-`
`i`     | input    | write input into cell                                | `,`
`o`     | output   | output content of cell as ASCII character            | `.`
`(`     |          | begin loop if cell content is not zero               | `[`
`)`     |          | jump back to loop begin if cell content is not zero  | `]`