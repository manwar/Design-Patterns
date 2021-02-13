#!/usr/bin/perl

use strict;
use warnings;

use Test::More;
use Shape::Circle;
use Shape::Circle::Red;
use Shape::Circle::Green;

my $redCircle = Shape::Circle->new({
    x       => 20,
    y       => 20,
    radius  => 10,
    drawAPI => Shape::Circle::Red->new,
});

my $greenCircle = Shape::Circle->new({
    x       => 10,
    y       => 10,
    radius  => 20,
    drawAPI => Shape::Circle::Green->new,
});


is($redCircle->draw,   'drawCircle(color = red; radius = 10; x = 20; y = 20)');
is($greenCircle->draw, 'drawCircle(color = green; radius = 20; x = 10; y = 10)');

done_testing();
