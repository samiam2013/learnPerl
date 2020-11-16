#!/usr/bin/perl
use strict;
use warnings;

print STDOUT "your name: ";
my $user_name = <STDIN>;

if ($user_name =~ /bob/i || $user_name =~ /alice/i){
  print STDOUT "nice to see you again $user_name\n";
} else {
  print STDERR "don't recognize the name: $user_name\n";
}

exit;
