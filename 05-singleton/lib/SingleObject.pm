package SingleObject;

$SingleObject::VERSION = '0.01';

=head1 NAME

SingleObject - Demo Singleton design pattern.

=cut

use Moo;
with 'MooX::Singleton';

has 'count' => (is => 'rw', default => sub { 0 });

sub counter {
    my ($self) = @_;

    return $self->count($self->count + 1);
}

1;
