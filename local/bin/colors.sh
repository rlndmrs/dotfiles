#!/usr/bin/env bash

names=(Black Red Green Yellow Blue Magenta Cyan White Default)

# Row 1: Color names
printf "%-14s" "Color:"
for name in "${names[@]}"; do
    printf "%-10s" "$name"
done
echo

# Row 2: Normal foreground (30-37, 39)
printf "%-14s" "FG Normal:"
for i in {0..7} 9; do
    printf "\e[3${i}m%-10s\e[0m" "3${i}"
done
echo

# Row 3: Bold + Normal foreground (1;30-37, 1;39)
printf "%-14s" "FG Bold:"
for i in {0..7} 9; do
    printf "\e[1;3${i}m%-10s\e[0m" "1;3${i}"
done
echo

# Row 4: Bright foreground (90-97)
printf "%-14s" "FG Bright:"
for i in {0..7}; do
    printf "\e[9${i}m%-10s\e[0m" "9${i}"
done
echo

# Row 5: Bold + Bright foreground (1;90-97)
printf "%-14s" "FG Bold Brt:"
for i in {0..7}; do
    printf "\e[1;9${i}m%-10s\e[0m" "1;9${i}"
done
echo

# Row 6: Normal background (40-47, 49) with inverse text (7)
printf "%-14s" "BG Normal:"
for i in {0..7} 9; do
    printf "\e[7;3${i}m%-10s\e[0m" " 4${i}"
done
echo

# Row 7: Bold + Normal background (1;7;30-37, 1;7;39)
printf "%-14s" "BG Bold:"
for i in {0..7} 9; do
    printf "\e[1;7;3${i}m%-10s\e[0m" " 1;4${i}"
done
echo

# Row 8: Bright background (100-107) with inverse text (7)
printf "%-14s" "BG Bright:"
for i in {0..7}; do
    printf "\e[7;9${i}m%-10s\e[0m" " 10${i}"
done
echo

# Row 9: Bold + Bright background (1;7;90-97)
printf "%-14s" "BG Bold Brt:"
for i in {0..7}; do
    printf "\e[1;7;9${i}m%-10s\e[0m" " 1;10${i}"
done
echo -e "\n"

# Text Attributes / Styles
attrs=(
    "0:Reset"
    "1:Bold"
    "2:Dim"
    "3:Italic"
    "4:Underline"
    "5:Blink"
    "7:Inverse"
    "8:Hidden"
    "9:Strike"
)

printf "%-14s" "Styles:"
for item in "${attrs[@]}"; do
    code="${item%%:*}"
    label="${item#*:}"
    printf "\e[${code}m%-12s\e[0m" "${code}:${label}"
done
echo
