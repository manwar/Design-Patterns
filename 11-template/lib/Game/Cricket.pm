package Game::Cricket;

use Moo;
extends 'Game';

sub initialize {
    my ($self) = @_;

    print 'Cricket: initialize.';
}

sub startPlay {
    my ($self) = @_;

    print 'Cricket: start play.';
}

sub endPlay {
    my ($self) = @_;

    print 'Cricket: end play.';
}

1;
