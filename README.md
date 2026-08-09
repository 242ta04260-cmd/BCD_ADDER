# BCD Adder Using Verilog

## Overview

This project implements a **BCD (Binary-Coded Decimal) Adder** using Verilog HDL.

The circuit adds two BCD digits along with an optional carry input and produces a BCD sum and carry output.

## Inputs

| Signal |  Width | Description      |
| ------ | -----: | ---------------- |
| `a`    | 4 bits | First BCD digit  |
| `b`    | 4 bits | Second BCD digit |
| `cin`  |  1 bit | Carry input      |

## Outputs

| Signal |  Width | Description   |
| ------ | -----: | ------------- |
| `sum`  | 4 bits | BCD sum digit |
| `cout` |  1 bit | Carry output  |

