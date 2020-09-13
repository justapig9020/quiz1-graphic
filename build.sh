#/bin/bash

src=$(ls *.dot)

for i in ${src}; do
    tar=$(echo $i | sed 's/\(.*\.\)dot/\1jpg/')
    dot -T jpg $i -o $tar
done

