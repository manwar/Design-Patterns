#!/usr/bin/perl

use strict;
use warnings;

use Test::More;

use FactoryProducer;
use AbstractFactory::ShapeFactory;

# get shape factory
my $shapeFactory1 = FactoryProducer::getFactory(0);

# get an object of Shape::Rectangle and call its draw()
my $shape1 = $shapeFactory1->getShape("RECTANGLE");
is($shape1->draw(), 'Inside Shape::Rectangle::draw()');

# get an object of Shape::Square and call its draw()
my $shape2 = $shapeFactory1->getShape("SQUARE");
is($shape2->draw(), 'Inside Shape::Square::draw()');

# get rounded shape factory
my $shapeFactory2 = FactoryProducer::getFactory(1);

# get an object of Shape::RoundedRectangle and call its draw()
my $shape3 = $shapeFactory2->getShape("RECTANGLE");
is($shape3->draw(), 'Inside Shape::RoundedRectangle::draw()');

# get an object of Shape::RoundedSquare and call its draw()
my $shape4 = $shapeFactory2->getShape("SQUARE");
is($shape4->draw(), 'Inside Shape::RoundedSquare::draw()');

done_testing();
