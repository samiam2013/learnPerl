#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;
# 4 Write a function that returns the elements on odd positions in a list

sub return_odd {
	my %args = @_;
	my $list = $args{'list'};
	my @output = ();
	foreach my $i (1 .. scalar(@{$list})){
		#print "list index $i: $list->[$i]\n";
		if ($i % 2 == 1) {
			#print "odd!\n";
			push(@output, $i);
		}
	}
	return \@output;
}

my $list = [ 'even0', 'odd1', 'even2', 'odd3', 'even4', 'odd5'];

print Data::Dumper::Dumper(return_odd('list' => $list));

exit;
