#!/usr/bin/perl
use strict;
use warnings;

# I wonder just how useful the built in numbers in perl are...
my $sum = 0;
for my $k (1..1000000) {
  $k *= 4;
  $sum += ((-1)**($k + 1)) / ((2*$k) - 1);		#((-1)**($k+1))/((2 * $k) - 1);;
  # close if there's a win state or allow for another move.
}
print STDERR "sum: $sum";

=pod
  Write a program that computes the sum of an alternating series where each
  element of the series is an expression of the form ((-1)^{k+1})/(2 * k-1)
  for each value of k from 1 to a million, multiplied by 4.
=cut
