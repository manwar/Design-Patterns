package Game::Football;

use Moo;
extends 'Game';

sub initialize {
    my ($self) = @_;

    print 'Football: initialize.';
}

sub startPlay {
    my ($self) = @_;

    print 'Football: start play.';
}

sub endPlay {
    my ($self) = @_;

    print 'Football: end play.';
}

1;
