#!/usr/bin/env bash

SIZE=(128x128! 80x80! 48x48! 32x32! 16x16! 150x116 48x48!)
OUTPUT=(novacoin-128.png novacoin-80.png novacoin-48.png novacoin-32.png novacoin-16.png header.png novacoin.png)

for idx in "${!SIZE[@]}"; do
  convert -background none -geometry "${SIZE[$idx]}" $1 "${OUTPUT[$idx]}"
done
