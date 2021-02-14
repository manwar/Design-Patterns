package Iterator;

# Define interface (role) Iterator.

use Moo::Role;

requires qw(next has_next);

1;
