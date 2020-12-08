#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use Data::Dumper;
# what am I doing ?
#  testing threads?

my @children = ();

my $proc_cnt = 6;
for my $pc (1..$proc_cnt){
  #print "forking $pc\n";
  my $child = fork();
  if ($child) { # parent
    print STDERR "parent here\n";
    push @children, $child;
  } else {
    print STDERR "child $pc here\n";
    sleep(5);
    exit;
  }
}

print STDERR Data::Dumper::Dumper(\@children);

for my $child (@children) {
  print STDERR "waiting for $child\n";
  waitpid($child, 0);
}

exit;

sub is_prime {
  my %args = shift @_;
  print STDERR Data::Dumper::Dumper(\%args);
}
