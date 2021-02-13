#!/usr/bin/perl

use strict;
use warnings;
use Test::More tests => 6;

BEGIN {
    use_ok('BridgePattern') || print "Bail out!\n";
    use_ok('DrawAPI')       || print "Bail out!\n";
    use_ok('Shape')         || print "Bail out!\n";
    use_ok('Shape::Circle') || print "Bail out!\n";
    use_ok('Shape::Circle::Red')   || print "Bail out!\n";
    use_ok('Shape::Circle::Green') || print "Bail out!\n";
}

diag( "Testing BridgePattern $BridgePattern::VERSION, Perl $], $^X" );
