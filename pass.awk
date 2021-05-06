#!/usr/bin/awk -f

{
  s = $0 "\n"
  n = length(s)
  while (1)
    printf "%s", substr(s,int(1+rand()*n),1)
}
