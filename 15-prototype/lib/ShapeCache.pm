package ShapeCache;

use Shape::Circle;
use Shape::Square;
use Shape::Rectangle;

use Moo;

has shapes => (
    is      => 'ro',
    default => sub {
        return {
            1 => Shape::Circle->new({ id => 1 }),
            2 => Shape::Square->new({ id => 2 }),
            3 => Shape::Rectangle->new({ id => 3 }),
        };
    }
);

sub getShape {
    my ($self, $id) = @_;

    return $self->shapes->{$id}->clone;
}

1;
