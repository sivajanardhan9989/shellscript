#!/bin/bash

NUM1=10
NUM2=20
SUM=$((NUM1 + NUM2))
echo "The sum of $NUM1 and $NUM2 is: $SUM"

#Array

movies=("lmc" "lmc2" "lmc3")
echo "First movie: ${movies[0]}"
echo "Second movie: ${movies[1]}"
echo "Third movie: ${movies[2]}"
