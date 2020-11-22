#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

my $secret_number = int(rand(100));
my %user_tries = ();
while (1 == 1) {
    print STDOUT "please make a guess: ";
    my $user_guess = <STDIN>;
    unless ($user_guess =~ /^[\d]+$/) { die("input must be digits\n"); }
    if (undef $user_tries{$user_guess}) {
      $user_tries{$user_guess} = 1;
    }
    if ($user_guess == $secret_number) {
        print "CONGRATULATIONS YOU GUESSED THE NUMBER!\n";
        last;
    } else {
        print "Secret number is ".($user_guess < $secret_number ?
                                    'higher' : 'lower')."\n";
    }
}
print STDOUT "took ".(scalar %user_tries)." tries\n";
exit;

=pod
  Write a guessing game where the user has to guess a secret number.
  After every guess the program tells the user whether their number was
  too large or too small. At the end the number of tries needed should
  be printed. It counts only as one try if they input the same number
  multiple times consecutively.
=cut
