#!/usr/bin/perl

use v5.38;
use Test::More tests => 2;

BEGIN {
    use_ok('Singleton')    || print "Bail out!\n";
    use_ok('SingleObject') || print "Bail out!\n";
}

diag( "Testing SingleObject, Perl $], $^X" );
