#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;

# 7 Write three functions that compute the sum of the numbers in a list: using a for-loop, a while-loop and recursion. 
#   (Subject to availability of these constructs in your language of choice.)

my @list = (1, 4, 17, -18);

print 'sum for: '.sum_for(\@list)."\n";
print 'sum while: '.sum_while(\@list)."\n";
print 'sum recursive: '.sum_recursion('list' => \@list)."\n";


sub sum_for {
    my $list = shift;
    my $sum = 0;
    for my $elem (@{$list}){
        #print "element: $elem\n";
        $sum = $sum + $elem;
    }
    return $sum;
}

sub sum_while {
    my $list = shift;
    my ($i, $sum) = (0, 0);
    while ($i < scalar(@{$list})){
        #print "element: $list->[$i]\n";
        $sum = $sum + $list->[$i];
        $i++;
    }
    return $sum;
}

sub sum_recursion {
    my %args = @_;
    my $list = $args{'list'};
    my $sum = (exists $args{'sum'} ? $args{'sum'} : 0);
    unless ($sum) {
        $sum = 0;
    }
    my $elem = (scalar(@{$list}) > 0 ? shift @{$list} : 0);
    if ($elem) {
        #print "element: $elem\n";
        $sum = $sum + $elem;
        #print "sum: $sum\n";
        sum_recursion('list' => $list, 'sum' => $sum);
    } else {
        return $sum;
    }
}


exit;