#!/usr/bin/bash
> output.txt

echo "Welcome to our Calculator!"

# Addition function
sum() {
    local x="$1"
    local y="$2"
    local c=$((x + y))
    echo "$c"
}

# Subtraction function
difference() {
    local x="$1"
    local y="$2"
    c=$((x - y))
    echo "$c"
}

# Multiplication function
product() {
    local x="$1"
    local y="$2"
    local c=$((x * y))
    echo "$c"
}

# Division function
quotient() {
    local x="$1"
    local y="$2"
    c=$((x / y))
    echo "$c"
}

# Xor function
xor() {
    local x="$1"
    local y="$2"
    local c=$((x ^ y))
    echo "$c"
}

# Compare function
compare() {
    local x="$1"
    local y="$2"
    if ((x > y)); then
        c=$x
    else
        c=$y
    fi
    echo "$c"
}

# Power function
power() {
    local x="$1"
    local y="$2"
    c=$(echo "$x ^ $y" | bc)
    echo "$c"
}

# Square root function
sqrt() {
    local x="$1"
    c=$(echo "sqrt($x)" | bc)
    echo "$c"
}

# Modulus function
modulus() {
    local x="$1"
    local y="$2"
    c=$((x % y))
    echo "$c"
}

# Absolute value function
absolute() {
    local x="$1"
    c=$(echo "$x" | awk '{ if ($1 >= 0) print $1; else print -$1 }')
    echo "$c"
}

# Logarithm function
logarithm() {
    local x="$1"
    c=$(echo "l($x)" | bc -l)
    echo "$c"
}

while read -r a b s; do
    echo "a = $a, b = $b, s = $s"
    

    if [[ "$s" == "sum" ]]; then
        c=$(sum "$a" "$b")
        echo "Result: $c" >> output.txt
    fi

    if [[ "$s" == "difference" ]]; then
        c=$(difference "$a" "$b")
        echo "Result: $c" >> output.txt
    fi

    if [[ "$s" == "product" ]]; then
        c=$(product "$a" "$b")
        echo "Result: $c" >> output.txt
    fi

    if [[ "$s" == "quotient" ]]; then
        c=$(quotient "$a" "$b")
        echo "Result: $c" >> output.txt
    fi

    if [[ "$s" == "xor" ]]; then
        c=$(xor "$a" "$b")
        echo "Result: $c" >> output.txt
    fi

    if [[ "$s" == "compare" ]]; then
        c=$(compare "$a" "$b")
        echo "Result: $c" >> output.txt
    fi
    
    if [[ "$s" == "power" ]]; then
        c=$(power "$a" "$b")
        echo "Result: $c" >> output.txt
    fi
    
    if [[ "$s" == "sqrt" ]]; then
        c=$(sqrt "$a")
        echo "Result: $c" >> output.txt
    fi
    
    if [[ "$s" == "modulus" ]]; then
        c=$(modulus "$a" "$b")
        echo "Result: $c" >> output.txt
    fi
    
    if [[ "$s" == "absolute" ]]; then
        c=$(absolute "$a")
        echo "Result: $c" >> output.txt
    fi
    
    if [[ "$s" == "logarithm" ]]; then
        c=$(logarithm "$a")
        echo "Result: $c" >> output.txt
    fi


done < "input.txt"
