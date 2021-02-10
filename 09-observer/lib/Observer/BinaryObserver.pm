package Observer::BinaryObserver;

use Moo;
extends 'Observer';

has 'subject' => (is => 'ro', required => 1);

sub BUILD {
    my ($self) = @_;

    $self->subject->attach($self);
}

sub update {
    my ($self) = @_;

    return sprintf("Binary string: %b.", $self->subject->state);
}

1;
