package AbstractFactory;

# Abstract class.

use Moo;

sub getShape {
    my ($shapeType) = @_;

    # let subclass extend it.
}

1;
