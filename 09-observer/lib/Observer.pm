package Observer;

use Moo::Role;

requires 'update';
has 'subject' => (is => 'rw', required => 1);

sub BUILD {
    my ($self) = @_;

    $self->subject->attach($self);
}

sub DEMOLISH {
    my ($self) = @_;
    $self->subject->detach($self);
}

1;
