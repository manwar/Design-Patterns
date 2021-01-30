#!/usr/bin/perl

use strict;
use warnings;
use Test::More tests => 1;

BEGIN {
    use_ok('SingleObject') || print "Bail out!\n";
}

diag( "Testing SingleObject $SingleObject::VERSION, Perl $], $^X" );
