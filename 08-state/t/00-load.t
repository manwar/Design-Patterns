#!/usr/bin/perl

use strict;
use warnings;
use Test::More tests => 1;

BEGIN {
    use_ok('StatePattern') || print "Bail out!\n";
}

diag( "Testing StatePattern $StatePattern::VERSION, Perl $], $^X" );
