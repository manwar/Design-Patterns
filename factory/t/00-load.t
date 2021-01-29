#!/usr/bin/perl

use strict;
use warnings;
use Test::More tests => 5;

BEGIN {
    use_ok('ShapeFactory')     || print "Bail out!\n";
    use_ok('Shape')            || print "Bail out!\n";
    use_ok('Shape::Circle')    || print "Bail out!\n";
    use_ok('Shape::Square')    || print "Bail out!\n";
    use_ok('Shape::Rectangle') || print "Bail out!\n";
}

diag( "Testing ShapeFactory $ShapeFactory::VERSION, Perl $], $^X" );
