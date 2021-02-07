package Item::Burger::VegBurger;

# Concrete class extending Item::Burger.

use Moo;
extends 'Item::Burger';

sub name {
    my ($self) = @_;

    return 'Veg Burger';
}

sub price {
    my ($self) = @_;

    return 10;
}

1;
