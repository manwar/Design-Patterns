package Shape::Rectangle;

# Implement interface (role) Shape.

use Moo;
with 'Shape';

sub draw {
    return "Inside Shape::Rectangle::draw()";
}

1;
