#!/bin/bash

nimble update
nimble install argparse
nim c -r --verbosity:0 cp.nim
