#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;

# 8 Write a function on_all that applies a function to every element of a list. 
    # Use it to print the first twenty perfect squares. The perfect squares can 
    # be found by multiplying each natural number with itself. The first few perfect 
    # squares are 1*1= 1, 2*2=4, 3*3=9, 4*4=16. Twelve for example is not a perfect 
    # square because there is no natural number m so that m*m=12. (This question is 
    # tricky if your programming language makes it difficult to pass functions as 
    # arguments.)

sub perfect_square {
    my $input = shift;
    return $input * $input;
};

print on_all('code_ref' => \&perfect_square, 'list' => [1, 2, 3, 4, 5, 6, 7]);

sub on_all {
    my %args = @_;
    my $code_ref = $args{'code_ref'};
    my $list = $args{'list'};

    foreach my $elem (@{$list}) { 
        print $code_ref->($elem)."\n";
    }
}

exit;