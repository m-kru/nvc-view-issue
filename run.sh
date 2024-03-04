#!/bin/bash
nvc  --std=2019 -L. --work=apb -a apb.vhd
nvc  --std=2019 -L. --work=apb -a checker.vhd
nvc  --std=2019 -L. --work=apb -a bfm.vhd
nvc  --std=2019 -L. --work=apb -a mock-completer.vhd
nvc  --std=2019 -L. --work=apb -a crossbar.vhd
nvc  --std=2019 -L. --work=work -a tb-two-requesters-one-completer.vhd
nvc  --std=2019 -L. -e tb_two_requesters_one_completer
nvc --messages=compact --std=2019 -L. -r tb_two_requesters_one_completer --wave --exit-severity=error --dump-arrays
