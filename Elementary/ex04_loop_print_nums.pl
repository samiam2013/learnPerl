#!/usr/bin/perl
use strict;
use warnings;

print STDOUT "A number perl can parse: ";
my $max_num = <STDIN>;
my $sum = 0;
eval {

  for (1..$max_num) {
    $sum += $_;
  }
};
if ($@) {
  print STDERR "there was a failure trying to sum to your number.\n";
} else {
  print STDOUT "your sum number is $sum\n";
}
