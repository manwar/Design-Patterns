package Item::Burger::ChickenBurger;

# Concrete class extending Item::Burger.

use Moo;
extends 'Item::Burger';

sub name {
    my ($self) = @_;

    return 'Chicken Burger';
}

sub price {
    my ($self) = @_;

    return 20;
}

1;
