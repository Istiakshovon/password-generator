#!/usr/bin/perl

use strict;
use Algorithm::Permute;

my $string = shift;
my @array = split //, $string;

for my $i (1..length($string)) {
  my $p = Algorithm::Permute->new(\@array, $i);
  while (my @res = $p->next) {
    print join('',@res), "\n";
  };
};
