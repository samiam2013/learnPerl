#!/usr/bin/perl
use Data::Dumper;

my ($count, $sum_time, $min, $max) = (0, 0, 1000000, 0);
while (my $in = <STDIN>) {
        chomp $in;
        # example:'64 bytes from 192.168.50.54: icmp_seq=2 ttl=63 time=1.73 ms'
        if ($in =~ /icmp_seq=(\d+)\s.*\stime=([\d\.]+)\s/) {
		print "line matched: $line";
	} 
        print "$1, $2 \n";
        my ($seq, $time) = ($1, $2, $3, $4);
        $time =~ /([\d\.]+)/;
        my $ms = $1;
        print "ms: $ms ";
        $sum_time += $ms;
        $count++;

        if ($ms > $max) {
                $max = $ms;
        } elsif ($ms < $min) {
                $min = $ms;
        }
}

print "avg time = ", ($sum_time / $count), " min: $min max: $max\n";

exit;
