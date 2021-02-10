package Observer::HexaObserver;

use Moo;
extends 'Observer';

has 'subject' => (is => 'ro', required => 1);

sub BUILD {
    my ($self) = @_;

    $self->subject->attach($self);
}

sub update {
    my ($self) = @_;

    return sprintf("Hexa string: %x.", $self->subject->state);
}

1;
