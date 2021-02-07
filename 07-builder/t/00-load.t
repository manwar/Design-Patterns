#!/usr/bin/perl

use strict;
use warnings;
use Test::More tests => 10;

BEGIN {
    use_ok('MealBuilder')                 || print "Bail out!\n";
    use_ok('Meal')                        || print "Bail out!\n";
    use_ok('Item')                        || print "Bail out!\n";
    use_ok('Item::Burger::VegBurger')     || print "Bail out!\n";
    use_ok('Item::Burger::ChickenBurger') || print "Bail out!\n";
    use_ok('Item::ColdDrink::Coke')       || print "Bail out!\n";
    use_ok('Item::ColdDrink::Pepsi')      || print "Bail out!\n";
    use_ok('Packing')                     || print "Bail out!\n";
    use_ok('Packing::Bottle')             || print "Bail out!\n";
    use_ok('Packing::Wrapper')            || print "Bail out!\n";
}

diag( "Testing MealBuilder $MealBuilder::VERSION, Perl $], $^X" );
