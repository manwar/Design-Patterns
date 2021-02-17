#!/usr/bin/perl

use strict;
use warnings;

use Test::More;
use ShapeCache;

my $cache = ShapeCache->new;

is($cache->getShape(1)->type, 'Circle');
is($cache->getShape(2)->type, 'Square');
is($cache->getShape(3)->type, 'Rectangle');

done_testing();
