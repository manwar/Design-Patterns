package Game;

use Moo;

sub initialize { }
sub startPlay  { }
sub endPlay    { }

sub play {
    my ($self) = @_;

    $self->initialize;
    $self->startPlay;
    $self->endPlay;
}

1;
