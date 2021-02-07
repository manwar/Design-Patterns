#!/usr/bin/perl

use strict;
use warnings;

use Test::Deep;
use Test::More;
use MealBuilder;

my $mealBuilder = MealBuilder->new;

is_deeply($mealBuilder->prepareVegMeal->getItems,
          [ ['Veg Burger', 'Wrapper', 10],
            ['Coke', 'Bottle', 12] ]);
is_deeply($mealBuilder->prepareNonVegMeal->getItems,
          [ ['Chicken Burger', 'Wrapper', 20],
            ['Pepsi', 'Bottle', 14] ]);

done_testing();
