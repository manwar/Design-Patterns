#!/usr/bin/perl

use strict;
use warnings;

use Test::More;

use FactoryProducer;
use AbstractFactory::ShapeFactory;

# get shape factory
my $shapeFactory1 = FactoryProducer::getFactory(0);

# get an object of Shape::Rectangle
my $shape1 = $shapeFactory1->getShape("RECTANGLE");
# call draw method of Shape::Rectangle
is($shape1->draw(), 'Inside Shape::Rectangle::draw()');

# get an object of Shape::Square
my $shape2 = $shapeFactory1->getShape("SQUARE");
# call draw method of Shape::Square
is($shape2->draw(), 'Inside Shape::Square::draw()');

# get rounded shape factory
my $shapeFactory2 = FactoryProducer::getFactory(1);

# get an object of Shape::RoundedRectangle
my $shape3 = $shapeFactory2->getShape("RECTANGLE");
# call draw method of Shape::RoundedRectangle
is($shape3->draw(), 'Inside Shape::RoundedRectangle::draw()');

# get an object of Shape::RoundedSquare
my $shape4 = $shapeFactory2->getShape("SQUARE");
# call draw method of Shape::RoundedSquare
is($shape4->draw(), 'Inside Shape::RoundedSquare::draw()');

done_testing();
