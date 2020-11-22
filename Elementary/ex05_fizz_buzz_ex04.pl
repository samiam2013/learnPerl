#!/usr/bin/perl
use strict;
use warnings;

print STDOUT "number to fizzbuzz sum to: ";
my $max_num = <STDIN>;
my $sum = 0;
eval {
  for (1..$max_num){
    if (($_ % 3 == 0) || ($_ % 5 == 0)) {
      $sum += $_
    }
  }
};
if ($@) {
  print STDERR "there was a problem trying to understand your number?\n";
} else {
  print STDOUT "your sum is $sum\n";
}

exit; 
