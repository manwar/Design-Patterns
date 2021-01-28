package Shape::RoundedRectangle;

# Implement interface (role) Shape.

use Moo;
with 'Shape';

sub draw {
    return "Inside Shape::RoundedRectangle::draw()";
}

1;
