#!/usr/bin/perl

use strict;
use warnings;

use Test::More;

use Shape::Circle;
use ShapeDecorator::Red;
use ShapeDecorator::Filled;

my $redCircle    = ShapeDecorator::Red->new({ shape => Shape::Circle->new });
my $filledCircle = ShapeDecorator::Filled->new({ shape => Shape::Circle->new });
my $redFilledCircle = ShapeDecorator::Filled->new({
    shape => ShapeDecorator::Red->new({
        shape => Shape::Circle->new
    })
});
my $filledRedCircle = ShapeDecorator::Red->new({
    shape => ShapeDecorator::Filled->new({
        shape => Shape::Circle->new
    })
});

is($redCircle->draw,       'A circle with a red border');
is($filledCircle->draw,    'A circle filled');
is($redFilledCircle->draw, 'A circle with a red border filled');
is($filledRedCircle->draw, 'A circle filled with a red border');

{   package MyClass;
    use Moo;
}
ok ! eval { ShapeDecorator::Red->new({ shape => MyClass->new }) };
like $@, qr/Invalid shape/;

done_testing();
