#!/usr/bin/perl
use strict;
use warnings;

my ($product, $output);
for my $x (1..24){
  for my $y (1..24){
    $product = $x *$y;
    $output = $product < 10 ? "   " : ($product < 100 ? "  " : " ");
    print $output." $product";
  }
  print "\n";
}
exit;
