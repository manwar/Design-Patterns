package Item;

# Define interface (role) Item.

use Moo::Role;

requires qw(packing price);

1;
