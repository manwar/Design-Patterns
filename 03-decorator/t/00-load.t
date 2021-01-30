#!/usr/bin/perl

use strict;
use warnings;
use Test::More tests => 6;

BEGIN {
    use_ok('ShapeDecorator')
        || print "Bail out!\n";
    use_ok('ShapeDecorator::RedShapeDecorator')
        || print "Bail out!\n";
    use_ok('Shape')
        || print "Bail out!\n";
    use_ok('Shape::Circle')
        || print "Bail out!\n";
    use_ok('Shape::Square')
        || print "Bail out!\n";
    use_ok('Shape::Rectangle')
        || print "Bail out!\n";
}

diag( "Testing ShapeDecorator $ShapeDecorator::VERSION, Perl $], $^X" );
