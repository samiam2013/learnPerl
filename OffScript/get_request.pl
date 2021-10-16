#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use HTTP::Request;
use LWP::UserAgent;
use Data::Dumper;

require HTTP::Request;
my $request = HTTP::Request->new(GET => 'https://freedomunits.rest/pageHits');
$request->header('accept' => 'application/json');
my $ua = LWP::UserAgent->new;
$ua->ssl_opts(verify_hostname => 0,
              SSL_verify_mode => 0x00);
my $response = $ua->request($request);

print Data::Dumper::Dumper($response->decoded_content);