#!/bin/bash
zokrates compile -i proof.zok
# perform the setup phase
zokrates setup

# Remove everything that's not needed
rm abi.json out.r1cs