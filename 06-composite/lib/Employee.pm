package Employee;

$Employee::VERSION = '0.01';

=head1 NAME

Employee - Demo Composite design pattern.

=cut

use overload q{""} => 'as_string', fallback => 1;
use Moo;

has 'name'         => (is => 'rw', required => 1);
has 'dept'         => (is => 'rw', required => 1);
has 'salary'       => (is => 'rw', required => 1);
has 'subordinates' => (is => 'rw', default  => sub {[]});

sub add {
    my ($self, $employee) = @_;

    push @{$self->{subordinates}}, $employee;
}

sub as_string {
    my ($self) = @_;

    return sprintf("Employee: [Name: %s, Dept: %s, Salary: %d]",
           $self->name, $self->dept, $self->salary);
}

1;
