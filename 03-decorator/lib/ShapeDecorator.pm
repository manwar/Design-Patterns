package ShapeDecorator;

$ShapeDecorator::VERSION = '0.01';

=head1

ShapeDecorator - Demo Decorator design pattern.

=cut

use Moo;
with 'Shape';

#use Shape::Circle;
#use Shape::Square;
#use Shape::Rectangle;

has 'shape'  => (
    is       => 'ro',
    isa      => sub { die 'Invalid shape.' unless $_[0]->does('Shape') },
    required => 1,
);

sub draw {
    my ($self) = @_;

    $self->shape->draw();
}

1;
