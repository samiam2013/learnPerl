#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;

# Write function that reverses a list, preferably in place.

my @array = ('first', 'second', 'third', 'fourth', 'fifth');

sub reverse_in_place {
	my %args = @_;
	my $array_ref = $args{'array'};
	my $arr_len = scalar(@$array_ref)-1;
	#print "made it in: arr_len: $arr_len\n";
	#print Data::Dumper::Dumper($array_ref);
	for my $i (0 .. ($arr_len)){
		if ($i < ($arr_len/2)) {
			my $buf = $array_ref->[$i];
			$array_ref->[$i] = $array_ref->[$arr_len-$i];
			$array_ref->[$arr_len-$i] = $buf;
		}
	}
}

reverse_in_place('array' => \@array);

for my $i (0 .. (scalar(@array)-1)){
	print "$array[$i]\n";
}

exit;
