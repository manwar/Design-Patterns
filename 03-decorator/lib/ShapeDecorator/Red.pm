package ShapeDecorator::Red;

use Moo;
extends 'ShapeDecorator';

sub draw {
    my ($self) = @_;

    $self->SUPER::draw . $self->_redBorder;
}

# private method
sub _redBorder {
    my ($self) = @_;

    return ' with a red border';
}

1;
