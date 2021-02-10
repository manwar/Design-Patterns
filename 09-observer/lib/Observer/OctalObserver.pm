package Observer::OctalObserver;

use Moo;

with 'Observer';

sub update {
    my ($self) = @_;

    return sprintf("Octal string: %o.", $self->subject->state);
}

1;
