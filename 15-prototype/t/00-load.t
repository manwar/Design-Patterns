#!/usr/bin/perl

use strict;
use warnings;
use Test::More tests => 6;

BEGIN {
    use_ok('PrototypePattern') || print "Bail out!\n";
    use_ok('ShapeCache')       || print "Bail out!\n";
    use_ok('Shape')            || print "Bail out!\n";
    use_ok('Shape::Circle')    || print "Bail out!\n";
    use_ok('Shape::Square')    || print "Bail out!\n";
    use_ok('Shape::Rectangle') || print "Bail out!\n";
}

diag( "Testing PrototypePattern $PrototypePattern::VERSION, Perl $], $^X" );
