#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;

# 5 write a function that computes the running total of a list

sub r_total {
	my %args = @_;
	my $list = $args{'list'};
	my @running_total = ();
	my $i = 0;
	foreach my $value (@{$list}){
		push(@running_total, ($i == 0 ? $value : $running_total[$i-1] + $value));	
		$i++;
	}
	return \@running_total;
}

my @list = ( 1, 3, 6, 7, 10 );

print Data::Dumper::Dumper(r_total('list' => \@list));

exit;
