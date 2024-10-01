#!/bin/bash

tmp_file="tmp.txt"
> "$tmp_file"

for i in {1..500}
do
  curl -s http://localhost:8080 >> "$tmp_file"
  echo "" >> "$tmp_file"  # Add a newline for readability
done

pattern="8841476dbeee"
result1=$(grep "$pattern" "$tmp_file" | wc -l)
echo "Pattern $pattern appears $result1 times in the results"
pattern="0de189e020d3"
result1=$(grep "$pattern" "$tmp_file" | wc -l)
echo "Pattern $pattern appears $result1 times in the results"
pattern="5c7476b0cc2f"
result1=$(grep "$pattern" "$tmp_file" | wc -l)
echo "Pattern $pattern appears $result1 times in the results"
pattern="540de3906cea"
result1=$(grep "$pattern" "$tmp_file" | wc -l)
echo "Pattern $pattern appears $result1 times in the results"
pattern="540de3906cea"
result1=$(grep "$pattern" "$tmp_file" | wc -l)
echo "Pattern $pattern appears $result1 times in the results"
total=$(wc -l < "$tmp_file")
echo "Total number of lines in the file: $total"