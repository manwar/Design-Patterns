#!/usr/bin/perl

use strict;
use warnings;
use Test::More tests => 5;

BEGIN {
    use_ok('ShapeDecorator')
        || print "Bail out!\n";
    use_ok('ShapeDecorator::Red')
        || print "Bail out!\n";
    use_ok('ShapeDecorator::Filled')
        || print "Bail out!\n";
    use_ok('Shape')
        || print "Bail out!\n";
    use_ok('Shape::Circle')
        || print "Bail out!\n";
}

diag( "Testing ShapeDecorator $ShapeDecorator::VERSION, Perl $], $^X" );
