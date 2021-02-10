package ShapeFactory;

$ShapeFactory::VERSION = '0.01';

=head1 NAME

ShapeFactory - Demo Factory design pattern.

=cut

use Moo;

use Shape::Circle;
use Shape::Square;
use Shape::Rectangle;


my %dispatch = (
    CIRCLE    => 'Shape::Circle',
    SQUARE    => 'Shape::Square',
    RECTANGLE => 'Shape::Rectangle'
);
sub getShape {
    my ($self, $shapeType) = @_;
    my $class = $dispatch{ uc $shapeType };
    return unless $class;

    return $class->new;
}

1;
