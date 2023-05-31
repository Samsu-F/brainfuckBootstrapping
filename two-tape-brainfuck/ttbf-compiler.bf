[ this is a comment loop
command ascii bit i/o charcell
   (     40    1   i
   )     41    2   i
   +     43    3   io    19
   ,     44    4   io
   -     45    5   io
   .     46    6   io
   <     60    7   io    20
   >     62    8   io
   [     91    9   io    21
   ]     93   10   io
   i    105   11   i
   l    108   12   i
   m    109   13   i
   o    111   14   i
   p    112   15   i
   r    114   16   i
]


~~~~~~~~~~~~~~~ PREFIX ~~~~~~~~~~~~~~~~
>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>+>     {1 to 17}=1; p=18
++++++++++[->++++>++++++>+++++++++<<<]  19=40; 20=60; 21=90; p=18
>+++>>+                                 19=43; 21=91; p=21
<++.<++.>..<.-->..<.>..<.>--...         print prefix; p=20
<<<[<]                                  p=0


~~~~~~~~~~~~~~ MAIN LOOP ~~~~~~~~~~~~~~
,+                            get input and increment to check for EOF
[

  >++++                         1=6; p=1
  [-<------->]+<-               1=1; 0=original input minus 35 (ascii value of '#')
  [                             if input is not '#'
    -----                       1=1; 0=original input minus 40 (ascii value of '(' )
    [                           if input is not a '(' character
      >-<                       1=0
      -
      [                         if input is not ')'
        >>-<<
        --
        [                       if input is not a plus char
          >>>-<<<
          -
          [                     if input is not a comma
            >>>>-<<<<
            -
            [                   if input is not a minus
              >>>> >-< <<<<
              -
              [                 if input is not a dot
                >>>> >>-<< <<<<
                --------------  minus 14
                [               if input is not the less than symbol
                  >>>> >>>-<<< <<<<
                  --
                  [             if input is not the greater symbol
                    >>>> >>>> - <<<< <<<<
                    >++++[-<------->]<-   minus 29
                    [                     if input is not the opening square bracket
                      >>>> >>>> >-< <<<< <<<<
                      --
                      [                   if input is not the closing square bracket
                        >>>> >>>> >>-<< <<<< <<<<
                        ------------      minus 12
                        [                 if input is not 'i'
                          >>>> >>>> >>>-<<< <<<< <<<<
                          ---
                          [               if input is not 'l'
                            >>>> >>>> >>>> - <<<< <<<< <<<<
                            -
                            [             if input is not 'm'
                              >>>> >>>> >>>> >-< <<<< <<<< <<<<
                              --
                              [           if input is not 'o'
                                >>>> >>>> >>>> >>-<< <<<< <<<< <<<<
                                -
                                [         if iput is not 'p'
                                  >>>> >>>> >>>> >>>-<<< <<<< <<<< <<<<
                                  --
                                  [       if iput is not 'r'
                                    >>>> >>>> >>>> >>>> - <<<< <<<< <<<< <<<<
                                    [-]   clear the input cell
                                  ]
                                ]
                              ]
                            ]
                          ]
                        ]
                      ]
                    ]
                  ]
                ]
              ]
            ]
          ]
        ]
      ]
    ]
    -                                   0=negative 1
    >
    [ if input was '('
      ->->->->->->->->->->->->->->->->  {1 to 16}=0; p=17
      [                                 print t2_searcher if necessary
        >>>.                            print command to go to next t2 position marker cell; p=20
        <.>>.<<++.-->....<.>>++.--<<++..-->>.<<.>++....--<++.-->>++.--<<. print the searcher; p=19
        >.<<+<-                         print command to go left; 17=0; 18=1; p=17
      ]
      >>>>.<<                           print opening square bracket; p=19
      <<<<<<<<<<<<<<<<<<                p=1
    ]
    >
    [ if input was ')'
      ->->->->->->->->->->->->->->->    {2 to 16}=0; p=17
      [                                 print t2_searcher if necessary
        >>>.                            print command to go to next t2 position marker cell; p=20
        <.>>.<<++.-->....<.>>++.--<<++..-->>.<<.>++....--<++.-->>++.--<<. print the searcher; p=19
        >.<<+<-                         print command to go left; 17=0; 18=1; p=17
      ]
      >>>>++.--<<                       print closing square bracket; p=19
      <<<<<<<<<<<<<<<<<                 p=2
    ]
    >
    [ if input was plus char
      ->->->->->->->->->->->->->->>     {3 to 16}=0; p=18
      [                                 print t1_searcher if necessary
        >>.                             print command to go to next t1 position marker cell; p=20
        <.>>.<<++.-->....<.>>++.--<<++..-->>.<<.>++....--<++.-->>++.--<<. print the searcher; p=19
        >.<<<+>-                        print command to go left; 17=1; 18=0; p=18
      ]
      >.                                print plus; p=19
      <<<<<<<<<<<<<<<<                  p=3
    ]
    >
    [ if input was comma char
      ->->->->->->->->->->->->->>       {4 to 16}=0; p=18
      [                                 print t1_searcher if necessary
        >>.                             print command to go to next t1 position marker cell; p=20
        <.>>.<<++.-->....<.>>++.--<<++..-->>.<<.>++....--<++.-->>++.--<<. print the searcher; p=19
        >.<<<+>-                        print command to go left; 17=1; 18=0; p=18
      ]
      >+.-                              print comma; p=19
      <<<<<<<<<<<<<<<                   p=4
    ]
    >
    [ if input was minus char
      ->->->->->->->->->->->->>         {5 to 16}=0; p=18
      [                                 print t1_searcher if necessary
        >>.                             print command to go to next t1 position marker cell; p=20
        <.>>.<<++.-->....<.>>++.--<<++..-->>.<<.>++....--<++.-->>++.--<<. print the searcher; p=19
        >.<<<+>-                        print command to go left; 17=1; 18=0; p=18
      ]
      >++.--                            print minus; p=19
      <<<<<<<<<<<<<<                    p=5
    ]
    >
    [ if input was dot char
      ->->->->->->->->->->->>           {6 to 16}=0; p=18
      [                                 print t1_searcher if necessary
        >>.                             print command to go to next t1 position marker cell; p=20
        <.>>.<<++.-->....<.>>++.--<<++..-->>.<<.>++....--<++.-->>++.--<<. print the searcher; p=19
        >.<<<+>-                        print command to go left; 17=1; 18=0; p=18
      ]
      >+++.---                          print dot; p=19
      <<<<<<<<<<<<<                     p=6
    ]
    >
    [ if input was less than char
      ->->->->->->->->->->>             {7 to 16}=0; p=18
      [                                 print t1_searcher if necessary
        >>.                             print command to go to next t1 position marker cell; p=20
        <.>>.<<++.-->....<.>>++.--<<++..-->>.<<.>++....--<++.-->>++.--<<. print the searcher; p=19
        >.<<<+>-                        print command to go left; 17=1; 18=0; p=18
      ]
      >>++.--<++.-->....<.>.<           print "right; minus; four left; plus; left"; p=19
      <<<<<<<<<<<<                      p=7
    ]
    >
    [ if input was greater char
      ->->->->->->->->->>               {8 to 16}=0; p=18
      [                                 print t1_searcher if necessary
        >>.                             print command to go to next t1 position marker cell; p=20
        <.>>.<<++.-->....<.>>++.--<<++..-->>.<<.>++....--<++.-->>++.--<<. print the searcher; p=19
        >.<<<+>-                        print command to go left; 17=1; 18=0; p=18
      ]
      >>++.--<++.-->++....--<.>.<       print "right; minus; four right; plus; left"; p=19
      <<<<<<<<<<<                       p=8
    ]
    >
    [ if input was opening square bracket
      ->->->->->->->->>                 {9 to 16}=0; p=18
      [                                 print t1_searcher if necessary
        >>.                             print command to go to next t1 position marker cell; p=20
        <.>>.<<++.-->....<.>>++.--<<++..-->>.<<.>++....--<++.-->>++.--<<. print the searcher; p=19
        >.<<<+>-                        print command to go left; 17=1; 18=0; p=18
      ]
      >>>.<<                            print opening square bracket; p=19
      <<<<<<<<<<                        p=9
    ]
    >
    [ if input was closing square bracket
      ->->->->->->->>                   {10 to 16}=0; p=18
      [                                 print t1_searcher if necessary
        >>.                             print command to go to next t1 position marker cell; p=20
        <.>>.<<++.-->....<.>>++.--<<++..-->>.<<.>++....--<++.-->>++.--<<. print the searcher; p=19
        >.<<<+>-                        print command to go left; 17=1; 18=0; p=18
      ]
      >>>++.--<<                        print closing square bracket; p=19
      <<<<<<<<<                         p=10
    ]
    >
    [ if input was 'i'
      ->->->->->->                      {11 to 16}=0; p=17
      [                                 print t2_searcher if necessary
        >>>.                            print command to go to next t2 position marker cell; p=20
        <.>>.<<++.-->....<.>>++.--<<++..-->>.<<.>++....--<++.-->>++.--<<. print the searcher; p=19
        >.<<+<-                         print command to go left; 17=0; 18=1; p=17
      ]
      >>+.-                             print comma; p=19
      <<<<<<<<                          p=11
    ]
    >
    [ if input was 'l'
      ->->->->->                        {12 to 16}=0; p=17
      [                                 print t2_searcher if necessary
        >>>.                            print command to go to next t2 position marker cell; p=20
        <.>>.<<++.-->....<.>>++.--<<++..-->>.<<.>++....--<++.-->>++.--<<. print the searcher; p=19
        >.<<+<-                         print command to go left; 17=0; 18=1; p=17
      ]
      >>>++.--<++.-->....<.>.<          print "right; minus; four left; plus; left"; p=19
      <<<<<<<                           p=12
    ]
    >
    [ if input was 'm'
      ->->->->                          {13 to 16}=0; p=17
      [                                 print t2_searcher if necessary
        >>>.                            print command to go to next t2 position marker cell; p=20
        <.>>.<<++.-->....<.>>++.--<<++..-->>.<<.>++....--<++.-->>++.--<<. print the searcher; p=19
        >.<<+<-                         print command to go left; 17=0; 18=1; p=17
      ]
      >>++.--                           print minus; p=19
      <<<<<<                            p=13
    ]
    >
    [ if input was 'o'
      ->->->                            {14 to 16}=0; p=17
      [                                 print t2_searcher if necessary
        >>>.                            print command to go to next t2 position marker cell; p=20
        <.>>.<<++.-->....<.>>++.--<<++..-->>.<<.>++....--<++.-->>++.--<<. print the searcher; p=19
        >.<<+<-                         print command to go left; 17=0; 18=1; p=17
      ]
      >>+++.---                         print dot; p=19
      <<<<<                             p=14
    ]
    >
    [ if input was 'p'
      ->->                              {15 to 16}=0; p=17
      [                                 print t2_searcher if necessary
        >>>.                            print command to go to next t2 position marker cell; p=20
        <.>>.<<++.-->....<.>>++.--<<++..-->>.<<.>++....--<++.-->>++.--<<. print the searcher; p=19
        >.<<+<-                         print command to go left; 17=0; 18=1; p=17
      ]
      >>.                               print plus; p=19
      <<<<                              p=15
    ]
    >
    [ if input was 'r'
      ->                                16=0; p=17
      [                                 print t2_searcher if necessary
        >>>.                            print command to go to next t2 position marker cell; p=20
        <.>>.<<++.-->....<.>>++.--<<++..-->>.<<.>++....--<++.-->>++.--<<. print the searcher; p=19
        >.<<+<-                         print command to go left; 17=0; 18=1; p=17
      ]
      >>>++.--<++.-->++....--<.>.<      print "right; minus; four right; plus; left"; p=19
      <<<                               p=16
    ]
    +[<+]>-<                            1=0; {2 to 16}=1; p=0
  ]

  >                                     p=1
  [                                     if iput was '#'
    ,----------                         infinite loop until next '\n' character
  ]
  +<                                    1=1; p=0

  ,+                                    get next input char; repeat loop if input is not EOF
]

++++++++++.                           print newline char
