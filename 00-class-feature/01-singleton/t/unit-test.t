#!/usr/bin/perl

use v5.38;

use Test::More;
use SingleObject;

is(SingleObject->instance->counter, 1);
is(SingleObject->instance->counter, 2);
is(SingleObject->instance->counter, 3);
is(SingleObject->instance->counter, 4);
is(SingleObject->instance->counter, 5);

done_testing();
