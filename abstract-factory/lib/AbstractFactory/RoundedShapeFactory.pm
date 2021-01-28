package AbstractFactory::RoundedShapeFactory;

use Moo;
extends 'AbstractFactory';

use Shape::RoundedSquare;
use Shape::RoundedRectangle;

sub getShape {
    my ($self, $shapeType) = @_;

    if (uc($shapeType) eq 'RECTANGLE') {
        return Shape::RoundedRectangle->new;
    }
    elsif (uc($shapeType) eq 'SQUARE') {
        return Shape::RoundedSquare->new;
    }

    return;
}

1;
