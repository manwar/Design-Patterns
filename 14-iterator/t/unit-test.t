#!/usr/bin/perl

use strict;
use warnings;

use Test::More;
use Container::NameRepository;

my $repository = Container::NameRepository->new({
    names => [ qw(A B C D E) ]
});

my $iterator = $repository->iterator;
is($iterator->next, 'A');
is($iterator->next, 'B');
is($iterator->next, 'C');
is($iterator->next, 'D');
is($iterator->next, 'E');

is($iterator->has_next, '');
is(!!$iterator->next, '');

done_testing();
