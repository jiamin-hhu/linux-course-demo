#!/bin/bash
# Demo for traversing all arguments without using shift

i=1
for arg in "$*"; do
  echo "the \$${i} argument is: $arg"
  let i++ 
done
