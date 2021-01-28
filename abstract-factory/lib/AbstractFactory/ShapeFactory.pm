package AbstractFactory::ShapeFactory;

use Moo;
extends 'AbstractFactory';

use Shape::Square;
use Shape::Rectangle;

sub getShape {
    my ($self, $shapeType) = @_;

    if (uc($shapeType) eq 'RECTANGLE') {
        return Shape::Rectangle->new;
    }
    elsif (uc($shapeType) eq 'SQUARE') {
        return Shape::Square->new;
    }

    return;
}

1;
