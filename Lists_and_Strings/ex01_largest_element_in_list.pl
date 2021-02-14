#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;

my @list = (103, 28130, -1302, 892, 0, 420, 69);

print STDERR "largest_element: ".largest_element(\@list)."\n";

exit;

sub largest_element {
  my $list_ref = shift;
  my $max = undef;
  for my $element (@$list_ref){
    if(!(defined $max) or ($element > $max)){
      $max = $element;}}
  return $max;
}
