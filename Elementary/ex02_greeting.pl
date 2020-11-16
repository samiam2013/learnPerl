#!/usr/bin/perl
use strict;
use warnings;

print STDOUT "your name please: ";
my $user_name = <STDIN>;
chomp($user_name);

print STDOUT "Hello $user_name\n";

exit;
