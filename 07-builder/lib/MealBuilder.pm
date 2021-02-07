package MealBuilder;

$MealBuilder::VERSION = '0.01';

=head1 NAME

MealBuilder - Demo Builder design pattern.

=cut

use Meal;
use Item::Burger::VegBurger;
use Item::Burger::ChickenBurger;
use Item::ColdDrink::Coke;
use Item::ColdDrink::Pepsi;

use Moo;

sub prepareVegMeal {
    my ($self) = @_;

    my $meal = Meal->new;
    $meal->addItem(Item::Burger::VegBurger->new);
    $meal->addItem(Item::ColdDrink::Coke->new);

    return $meal;
}

sub prepareNonVegMeal {
    my ($self) = @_;

    my $meal = Meal->new;
    $meal->addItem(Item::Burger::ChickenBurger->new);
    $meal->addItem(Item::ColdDrink::Pepsi->new);

    return $meal;
}

1;
