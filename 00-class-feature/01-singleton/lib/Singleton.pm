=head1 NAME

Singleton - Base class to manage the singleton feature using new experiment feature 'class' in the core Perl v5.38.

=cut

use v5.38;
use experimental 'class';

class Singleton 0.01 {
    my $instance;
    sub instance($class) { $instance //= $class->new }
}
