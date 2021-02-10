package ShapeDecorator::Filled;

use Moo;
extends 'ShapeDecorator';

sub draw {
    my ($self) = @_;

    $self->SUPER::draw . $self->_fill;
}

# private method
sub _fill {
    my ($self) = @_;

    return ' filled';
}

1;
