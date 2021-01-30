#!/usr/bin/perl

use strict;
use warnings;

use Test::More;

use Shape::Circle;
use Shape::Square;
use Shape::Rectangle;
use ShapeDecorator::RedShapeDecorator;

my $circle       = Shape::Circle->new;
my $redCircle    = RedShapeDecorator->new({ shape => Shape::Circle->new });

is($circle->draw,       'Inside Shape::Circle::draw()');
is($redCircle->draw,    'Shape::Circle Border Color: Red');

my $square       = Shape::Square->new;
my $redSquare    = RedShapeDecorator->new({ shape => Shape::Square->new });
is($square->draw,       'Inside Shape::Square::draw()');
is($redSquare->draw,    'Shape::Square Border Color: Red');

my $rectangle    = Shape::Rectangle->new;
my $redRectangle = RedShapeDecorator->new({ shape => Shape::Rectangle->new });
is($rectangle->draw,    'Inside Shape::Rectangle::draw()');
is($redRectangle->draw, 'Shape::Rectangle Border Color: Red');

done_testing();
