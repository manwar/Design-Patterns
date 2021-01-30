package ShapeFactory;

$ShapeFactory::VERSION = '0.01';

=head1 NAME

ShapeFactory - Demo Factory design pattern.

=cut

use Moo;

use Shape::Circle;
use Shape::Square;
use Shape::Rectangle;

sub getShape {
    my ($self, $shapeType) = @_;

    if (uc($shapeType) eq 'CIRCLE') {
        return Shape::Circle->new;
    }
    elsif (uc($shapeType) eq 'SQUARE') {
        return Shape::Square->new;
    }
    elsif (uc($shapeType) eq 'RECTANGLE') {
        return Shape::Rectangle->new;
    }

    return;
}

1;
