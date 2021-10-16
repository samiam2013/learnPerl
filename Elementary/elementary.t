#!/usr/bin/perl
use strict;
use warnings;
use Test::Most tests => 2, 'die';

my $ex01 = `./ex01_hello_world.pl`; chomp $ex01;
is $ex01, 'Hello World';

my $name = "Name";
my $ex02 = `echo '$name' | ./ex02_greeting.pl`;
$ex02 =~ s/^.*:\s//; chomp $ex02;

is $ex02, "Hello $name";

exit 1;