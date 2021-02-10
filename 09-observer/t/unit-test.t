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
my $hexO = Observer::HexaObserver->new({ subject => $subject });
my $octO = Observer::OctalObserver->new({ subject => $subject });
my $binO = Observer::BinaryObserver->new({ subject => $subject });

my $tests = {
    14 => ['Hexa string: e.', 'Octal string: 16.','Binary string: 1110.' ],
    16 => ['Hexa string: 10.','Octal string: 20.','Binary string: 10000.'],
};

foreach my $state (keys %$tests) {
    is_deeply($subject->setState($state), $tests->{$state});
}

# Test the weak links and detaching on destruction.
undef $binO;
undef $octO;
is_deeply($subject->setState(11), ['Hexa string: b.']);

done_testing();
