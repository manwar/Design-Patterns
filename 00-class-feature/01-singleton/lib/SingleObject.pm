=head1 NAME

SingleObject - Demo Singleton design pattern using new experiment feature 'class' in the core Perl v5.38.

=cut

use v5.38;
use experimental 'class';

class SingleObject :isa(Singleton) {
    field $count :param = 0;
    method counter { ++$count }
}
