#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;

# Write a function that tests whether a string is a palindrome

sub is_palindrome {
	my $string = shift;
	print Data::Dumper::Dumper($string);
	foreach my $i (0 .. length($string)-1) {
		#print "i: $i\n";
		my $nth = substr($string, $i, 1);
		my $opp = substr($string, length($string)-($i+1), 1);
		#print "nth: $nth opp: $opp \n";
		if ($nth ne $opp) {
			return 0;
		}
		if ((length($string)/2) < $i) {
			#print "stop here!\n";
			last;
		}
	} 
	return 1;
}


if (is_palindrome("racecar")){
	print "racecar IS a palinndrome!\n";
} else {
	print "racecar NOT a palindrome!\n";
}

if (is_palindrome("abcde")){
	print "that lady's abcde baby name is a palindrome\n";
} else {
	print "go figure, abcde not is a palindrome\n";
}


exit;
