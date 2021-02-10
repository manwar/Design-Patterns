package Subject;

use Moo;

has 'state'     => (is => 'rw');
has 'observers' => (is => 'rw');

sub setState {
    my ($self, $state) = @_;

    $self->{state} = $state;
    $self->notifyObservers;
}

sub attach {
    my ($self, $observer) = @_;

    push @{$self->{observers}}, $observer;
}

sub notifyObservers {
    my ($self) = @_;

    my $res = [];
    foreach my $observer (@{$self->{observers}}) {
        push @$res, $observer->update;
    }

    return $res;
}

1;
