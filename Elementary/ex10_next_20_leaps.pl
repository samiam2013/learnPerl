use strict;
use warnings;
use Time::Piece;

my $t = Time::Piece->new();
my $year = $t->year;

if ($year % 4 == 0){
  # current year is likely leap

} else {
  # current year is not leap so get next divisible by 4 year
  $year = $year - ($year % 4) + 4
}
my $leaps_found = 0;
while (1) {
  if ($year % 4 == 0){
    if ($year % 100 == 0) {
      # is century-end, must be divisible by 400
      if ($year % 400 == 0) {
        $leaps_found++;
        print STDOUT "$year is a leap year\n";
      }
    } else {
      # non century end leap years
      $leaps_found++;
      print STDOUT "$year is a leap year\n";
    }
    if ($leaps_found > 20){
      last;
    }
  }
  $year++;
}

exit;

=pod
  Write a program that prints the next 20 leap years.
=cut
