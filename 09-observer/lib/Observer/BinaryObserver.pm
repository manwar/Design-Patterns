package Observer::BinaryObserver;

use Moo;

with 'Observer';

sub update {
    my ($self) = @_;

    return sprintf("Binary string: %b.", $self->subject->state);
}

1;
