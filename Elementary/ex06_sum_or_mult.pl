#!/usr/bin/perl
use strict;
use warnings;

print STDOUT "(m)ultiply (*)/(+) (a)dd: ";
my $mult_or_add = <STDIN>;
if ( $mult_or_add =~ /\+|[ad]+/gi ){
  print STDOUT "number to add to: ";
  my $sum_in = <STDIN>;
  unless ($sum_in =~ /\d+/gi) {
    print STDERR "invalid input: $sum_in\n";
    exit 0;
  }
  my $sum = 0;
  for (1..$sum_in) {
    $sum += $_;
  }
  print STDOUT "your sum: $sum\n";

} elsif ( $mult_or_add =~ /[multiply]+|\*/gi ){
  print STDOUT "number to multiply to: ";
  my $product_in = <STDIN>;
  unless ($product_in =~ /\d+/gi) {
    print STDERR "invalid input: $product_in\n";
    exit 0;
  }
  my $product = 1;
  for (1..$product_in){
    $product = $product * $_;
  }
  print STDOUT "your product: $product\n";

}
exit;
