#!/usr/bin/perl
use strict;
use warnings;

print STDOUT "A number perl can parse: ";
my $max_num = <STDIN>;

eval {
  for (1..$max_num) {
    print STDOUT "$_\n";
  }
};
if ($@) {
  print STDERR "there was a failure trying to print to your number.\n";
}
