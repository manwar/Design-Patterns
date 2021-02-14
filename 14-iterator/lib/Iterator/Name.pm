package Iterator::Name;

use Moo;

has 'names' => (is => 'ro', required => 1);
has 'index' => (is => 'rw', default  => sub { -1 });

sub has_next {
    my ($self) = @_;

    return ($self->index < scalar(@{$self->names})-1);
}

sub next {
    my ($self) = @_;

    if ($self->has_next) {
        $self->{index}++;
        return $self->names->[$self->index];
    }

    return;
}

1;
