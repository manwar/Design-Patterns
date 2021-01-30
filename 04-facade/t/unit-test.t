#!/usr/bin/perl

use strict;
use warnings;

use Test::More;
use ShapeMaker;

my $shape = ShapeMaker->new;

is($shape->drawCircle,      'Inside Shape::Circle::draw()');
is($shape->drawSquare(),    'Inside Shape::Square::draw()');
is($shape->drawRectangle(), 'Inside Shape::Rectangle::draw()');

done_testing();
