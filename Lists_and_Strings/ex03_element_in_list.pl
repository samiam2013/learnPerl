#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;

# 3 Write a function that checks whether an element occurs in a list.

sub in_list {
	my %args = @_;
	my $value = $args{'value'};
	my $list_arr_ref = $args{'list'};
	foreach my $element (@{$list_arr_ref}){
		#print "element = $element\n";
		if ($element eq $value){
			return 1;
		}
	}
	return 0;
}


my @fruits = ('banana', 'apple', 'orange');

if (in_list('value'=>'banana', 'list'=>\@fruits)){
	print "banana in list\n";
}

if (in_list('value'=>'dragonfruit', 'list'=>\@fruits)){
	print "dragonfruit in list\n";
}


exit
