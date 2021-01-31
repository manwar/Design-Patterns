#!/usr/bin/perl

use strict;
use warnings;
use Test::More tests => 1;

BEGIN {
    use_ok('Employee') || print "Bail out!\n";
}

diag( "Testing Employee $Employee::VERSION, Perl $], $^X" );
