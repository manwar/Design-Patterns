package Shape::Circle;

use Moo;
extends 'Shape';

has 'x'      => (is => 'ro', required => 1);
has 'y'      => (is => 'ro', required => 1);
has 'radius' => (is => 'ro', required => 1);

sub draw {
    my ($self) = @_;

    return $self->drawAPI->drawCircle($self->radius, $self->x, $self->y);
}

1;
