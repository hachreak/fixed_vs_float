fixed_vs_float
==============

Check how good erlang handle math operations.

This is implementing the *Muller’s Recurrence*.

See [more about it](https://medium.com/@bellmar/is-cobol-holding-you-hostage-with-math-5498c0eb428b).

Run:

    $ rebar3 shell
    1> fixed_vs_float:run(20).

**Spoiler Alert**:

    1 | 4
    2 | 4.25
    3 | 4.470588235294116
    4 | 4.6447368421052175
    5 | 4.770538243625083
    6 | 4.855700712568563
    7 | 4.91084749866063
    8 | 4.945537395530508
    9 | 4.966962408040999
    10 | 4.980042204293014
    11 | 4.987909232795786
    12 | 4.991362641314552
    13 | 4.967455095552268
    14 | 4.42969049830883
    15 | -7.817236578459315
    16 | 168.93916767106458
    17 | 102.03996315205927
    18 | 100.0999475162497
    19 | 100.00499204097244
    20 | 100.0002495792373
