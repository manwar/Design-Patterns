#!/usr/bin/perl

use strict;
use warnings;

use Test::More;
use ShapeFactory;

# get shape factory
my $shapeFactory = ShapeFactory->new;

# get an object of Shape::Circle and call its draw()
my $shape1 = $shapeFactory->getShape('CIRCLE');
is($shape1->draw(), 'Inside Shape::Circle::draw()');

# get an object of Shape::Square and call its draw()
my $shape2 = $shapeFactory->getShape('SQUARE');
is($shape2->draw(), 'Inside Shape::Square::draw()');

# get an object of Shape::Rectangle and call its draw()
my $shape3 = $shapeFactory->getShape('RECTANGLE');
is($shape3->draw(), 'Inside Shape::Rectangle::draw()');

done_testing();
