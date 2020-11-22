#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use bignum;
use POSIX;

# largest 64 bit number.
my $candidate = 90001;
while (1 == 1) {
    my $is_prime = 1;

    #print STDOUT "candidate: $candidate\n";
    for (my $i = 2; $i <= ceil($candidate/2) + 1; $i += 1) {
        #print STDOUT "candidate: $candidate / i: $i\n";
        if ($candidate % $i == 0) {
            $is_prime = 0;
            #print STDOUT "$candidate is NOT prime\n";
        }
    }

    if ($is_prime) {
        print STDOUT "$candidate is prime!\n";
    }
    $candidate += 2;
    #print STDOUT "new candidate $candidate\n"
}

exit;
