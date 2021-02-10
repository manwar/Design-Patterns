package Observer::HexaObserver;

use Moo;

with 'Observer';

sub update {
    my ($self) = @_;

    return sprintf("Hexa string: %x.", $self->subject->state);
}

1;
