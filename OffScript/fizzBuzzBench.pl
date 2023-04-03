#!/usr/bin/perl
use strict;
use warnings;

for (my $i = 1; $i <= 1000000; $i++) {
    my $value = "";
    if ($i % 3 == 0) {
        $value .= "Fizz";
    }
    if ($i % 5 == 0) {
        $value .= "Buzz";
    }
    if ($value eq "") {
        $value = $i;
    }
    print("$value\n");
}

# do the same thing again but with addition and == operators
# my $nextFizz = 3;
# my $nextBuzz = 5;
# for (my $i = 1; $i <= 1000000; $i++) {
#     my $value = "";
#     if ($i == $nextFizz) {
#         $value .= "Fizz";
#         $nextFizz += 3;
#     }
#     if ($i == $nextBuzz) {
#         $value .= "Buzz";
#         $nextBuzz += 5;
#     }
#     if ($value eq "") {
#         $value = $i;
#     }
#     print("$value\n");
# }
