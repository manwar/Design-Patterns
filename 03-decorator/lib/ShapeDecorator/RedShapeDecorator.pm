package RedShapeDecorator;

use Moo;
extends 'ShapeDecorator';

#sub BUILD {
#    my ($self, $args) = @_;
#
#    $self->SUPER::new($args);
#}

sub draw {
    my ($self) = @_;

    $self->shape->draw;
    $self->_setRedBorder;
}

# private method
sub _setRedBorder {
    my ($self) = @_;

    return ref($self->shape) . ' Border Color: Red';
}

1;
