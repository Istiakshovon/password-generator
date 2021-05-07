#!/usr/bin/sh

userinput=$1 awk '
    BEGIN {
        s = ENVIRON["userinput"] "\n"
        n = length(s)
        while (1)
            printf "%s", substr(s,int(1+rand()*n),1)
    }' | head -n 100000
