#!/usr/bin/perl

use strict;
use warnings;
use Test::More tests => 9;

BEGIN {
    use_ok('FactoryProducer')                      || print "Bail out!\n";
    use_ok('Shape')                                || print "Bail out!\n";
    use_ok('Shape::Square')                        || print "Bail out!\n";
    use_ok('Shape::RoundedSquare')                 || print "Bail out!\n";
    use_ok('Shape::Rectangle')                     || print "Bail out!\n";
    use_ok('Shape::RoundedRectangle')              || print "Bail out!\n";
    use_ok('AbstractFactory')                      || print "Bail out!\n";
    use_ok('AbstractFactory::ShapeFactory')        || print "Bail out!\n";
    use_ok('AbstractFactory::RoundedShapeFactory') || print "Bail out!\n";
}

diag( "Testing FactoryProducer $FactoryProducer::VERSION, Perl $], $^X" );
