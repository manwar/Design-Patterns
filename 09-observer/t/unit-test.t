#!/usr/bin/perl

use strict;
use warnings;

use Test::Deep;
use Test::More;
use Subject;
use Observer::HexaObserver;
use Observer::OctalObserver;
use Observer::BinaryObserver;

my $subject = Subject->new;
Observer::HexaObserver->new({ subject => $subject });
Observer::OctalObserver->new({ subject => $subject });
Observer::BinaryObserver->new({ subject => $subject });

my $tests = {
    14 => ['Hexa string: e.', 'Octal string: 16.','Binary string: 1110.' ],
    16 => ['Hexa string: 10.','Octal string: 20.','Binary string: 10000.'],
};

foreach my $state (keys %$tests) {
    is_deeply($subject->setState($state), $tests->{$state});
}

done_testing();
