#!/usr/bin/bash
> output.txt

echo "Welcome to our Calculator!"


sum() {
    local x="$1"
    local y="$2"
    local c=$((x + y))
    echo "$c"
}

difference() {
    local x="$1"
    local y="$2"
    c=$((x - y))
    echo "$c"
}

product() {
    local x="$1"
    local y="$2"
    local c=$((x * y))
    echo "$c"
}

division() {
    local x="$1"
    local y="$2"
    c=$((x / y))
    echo "$c"
}

xor() {
    local x="$1"
    local y="$2"
    local c=$((x ^ y))
    echo "$c"
}

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

    if [[ "$s" == "division" ]]; then
        c=$(division "$a" "$b")
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

done < "input.txt"