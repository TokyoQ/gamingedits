#!/bin/bash

jq 'keys[]' config/ranges.json | tr -d '"' > companies.txt
sed -i '' -e 's/^/* /g' companies.txt
cp README.template README.md
cat companies.txt >> README.md
rm companies.txt
