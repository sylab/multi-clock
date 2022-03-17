#!/bin/sh
gapbs/bfs -g 30 -n 5 > bfs.out
sleep 100
gapbs/pr -g 30 -n 5 > pr.out
sleep 100
gapbs/sssp -g 29 -n 5 > sssp.out
sleep 100
gapbs/tc -g 29 -n 5 > tc.out
sleep 100
gapbs/bc -g 30 -n 5 > bc.out
sleep 100
gapbs/cc -g 30 -n 5 > cc.out
sleep 100


